#ifndef EM_H
#define EM_H
#include <armadillo>  
#include <iostream>
namespace ker
{
    class cEm
    {
    private:
        int _nDim;     //the dimensionality of input
        int _nPat;     //the number of centroids
        float *mu;	//the means of centroid (one dimensionality)
	int m;		//the number of input
        float *_pdfZ;        //the probability of input which is belong to a certain centroid
        float _lfL;             //the likehood function ,it will be compute in E step 
                               
    public:
	arma::vec observationvec;//the vector of observation
	arma::mat Mu;//the means of centriod
	arma::cube Sigma;//the variance of centriod
	float *_pdfPi;         //the prior probability of centriod
        cEm(int nDim, int nPat);
        virtual ~cEm();
        float* Cluster(float observation[]);//online EM Cluster
 
    private:
	float Eta(int k);//the step of update(stepwise)
        float Gaussian(arma::vec y, arma::vec mu,arma:: mat sigma);//the probability density function for online EM
        void Expectation();
        /**
        M-Step
        */		
	void onlineMaximization(arma::vec observationvec,int i);
 	/**
        E-Step
        */
	void onlineExpectation(arma::vec observationvec);
  		
    };
}

#endif 
