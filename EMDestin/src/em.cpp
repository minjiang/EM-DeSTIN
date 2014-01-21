
#include "em.h"
#include "memory.h"
#include "stdlib.h"
#include "stdio.h"
#include "math.h"
#include "time.h"
#include <armadillo>  
#include <iostream>
#include<fstream>
using namespace std;
using namespace arma;
namespace ker
{
    #define PI 3.1415926
    #define CONST_E 0.000000001
    
    cEm::cEm(int nDim, int nPat)
    {
        _nDim = nDim;//the dimensionality of input
        _nPat = nPat;// the number of centroids
	observationvec = ones<vec>(_nDim,1);
        m=0;
        Mu=randu<mat>(_nDim,_nPat)*0.3;// the initialization of Sigma

	/**
	the initialization of Sigma
	**/
	Sigma=ones<cube>(_nDim,_nDim,_nPat);
	for (int i = 0; i <_nPat; i++)
        {	mat A(_nDim,_nDim);
		Sigma.slice(i)=A.eye();
	}

	//the initialization of pdfZ	
         _pdfZ = new float[_nPat];
         memset(_pdfZ, 0, sizeof(float) * _nPat);
    
         _pdfPi = new float[_nPat]; 
        //_pdfPi is initialized 1 / _nPat
	
	for(int j=0;j<_nPat;j++)
	{	
		_pdfPi[j]=1.0/_nPat;
	}
	
	mu=new float [_nDim*_nPat];
	for(int i=0;i<_nDim*_nPat;i++)
	mu[i]=1;
    }

    cEm::~cEm()
    {
        
        delete []_pdfZ;   
        delete []_pdfPi;
		
    }
    
    float cEm::Gaussian(vec y, vec mu, mat sigma)
    {
        //gaussian function :the probability density function for online EM 
        
        vec pdfTmp1 ;
        float pdfTmp2;
        pdfTmp1 = y - mu;
	if(det(sigma)!=0)    
        pdfTmp2 =det( trans(pdfTmp1) * inv(sigma)*pdfTmp1);
	else pdfTmp2 =det( trans(pdfTmp1) * pinv(sigma)*pdfTmp1);
         float lfTmp1 = 0;       
        lfTmp1 = pdfTmp2/-2.0;
        lfTmp1 = exp(lfTmp1);
	if(lfTmp1 ==0)lfTmp1=0.001;

	float lfSigma;
        if(fabs(det(sigma))<CONST_E)
		lfSigma=0.0001;		
        else 
		lfSigma = fabs(det(sigma));
        float lfTmp2 = 1 / sqrt (pow(2.0 * PI, 2) * lfSigma) * lfTmp1;

        if (lfTmp2 < CONST_E) lfTmp2 = CONST_E;
        return lfTmp2;
    }
 //E-Step
	void cEm::onlineExpectation(vec observationvec)
    {	vec samlple=observationvec;
       
        _lfL = 0;
        float lfSum = 0;//to compute likelihood
        for (int j = 0; j < _nPat; j++)
        {
             float lfTmp = 0;//normalization constant
             for (int l = 0; l < _nPat; l++)
             {	   
                   float lfG = Gaussian(samlple, Mu.col(l), Sigma.slice(l));
                   lfTmp =lfTmp+ _pdfPi[l] * lfG; 
				   
             }
	     if(lfTmp<CONST_E)lfTmp=0.001;
             float lfG = Gaussian(samlple, Mu.col(j), Sigma.slice(j));
             _pdfZ[j] = _pdfPi[j] * lfG / lfTmp;//the probability of input which is belong to a certain centroid
	     if(_pdfZ[j]<CONST_E)_pdfZ[j]=0.000001;
	    if(_pdfZ[j]==datum::nan)_pdfZ[j]=1;
	//lfSum += _pdfPi[i][j] * lfG;
         }
         // _lfL += log(lfSum);
        
    }
     float cEm::Eta(int k)
	 {
		float value=pow(k+20.0, -0.6);//alpha=0.6
		return value;
	 }
//M-step	 
    void cEm::onlineMaximization(vec observationvec,int i)
	{	vec samlple=observationvec;

		for (int j = 0; j < _nPat; j++)
		{		
			mat pdfDeltaTmp;
			vec tempMu=Mu.col(j);
			mat temSigma=Sigma.slice(j);
			float _tempdfPi=_pdfPi[j];
			_pdfPi[j]=Eta(i)*_pdfZ[j]+(1-Eta(i))*_tempdfPi;
			if(_pdfPi[j]<CONST_E)_pdfPi[j]=0.001;
			if(_pdfZ[j]==datum::nan)_pdfZ[j]=1;
			if(_pdfPi[j]==datum::nan)_pdfPi[j]=1;
			/*
			Based on algorithm of stepwise online EM,the updated parameter for each observertion.choose the interpolation between new parameter and old parameter 

			*/
			Mu.col(j)= (Eta(i)*samlple*_pdfZ[j]+(1-Eta(i))*tempMu*_tempdfPi)/_pdfPi[j];
			pdfDeltaTmp=(1-Eta(i))*_tempdfPi*(temSigma+tempMu*trans(tempMu))+Eta(i)*_pdfZ[j]*samlple*trans(samlple);
			Sigma.slice(j) =pdfDeltaTmp/_pdfPi[j]-Mu.col(j)*trans(Mu.col(j));
			
		}
	}
    
    float* cEm::Cluster(float observation[])
    {	
	for(int i=0;i<_nDim;i++)
        {
		observationvec(i) = observation[i];//convert observation to observation vector 
		//printf("%f ",observation[i]);
	}
	/*online process of E step and M step*/
	onlineExpectation(observationvec);
	onlineMaximization(observationvec,m);
		
	for (int i = 0; i < _nPat; i++)
	{
		for(int k = 0; k < _nDim; k++)
		mu[i*_nDim+k]=Mu(k,i);
	}
	
	m++;
	
         return mu;
       
    }
}
