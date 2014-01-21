
#include <string>  
#include <fstream>
#include "stdio.h"
#include "VideoSource.h"
#include "DestinNetworkAlt.h"
#include "Transporter.h"
#include "unit_test.h"
#include <time.h>
#include "macros.h"
//
#include "stereovision.h"
#include "stereocamera.h"
#include "ImageSourceImpl.h"
#include "CztMod.h"

#include "SomPresentor.h"
#include "ClusterSom.h"
#include <stdlib.h>
#include <vector>

#define NUMBER "0"
using namespace std;
using namespace cv;
vector<Mat> spl; 
ImageSouceImpl isi;	

int main(int argc, char ** argv)
{
	for(int i=1;i<500;i++){
		char name[256];
		sprintf(name, "/home/zhangzinan/handwrite_dataset/"NUMBER"/"NUMBER"/%d.png", i);
	 	isi.addImage(name);
	}
/*-----------------------------------------initialization-------------------------------------------------*/
    	SupportedImageWidths siw = W32;
    	uint centroid_counts[]  = {16,8,4,1};
   	bool isUniform = true;
    	int size = 32*32;
    	//int extRatio = 1;
    	DestinNetworkAlt * network = new DestinNetworkAlt(siw, 4, centroid_counts, isUniform, 1);

    	int frameCount = 0; 
	clock_t start,finish;
    	int maxCount =2000;
/*----------------------------------------------training---------------------------------------*/
#if 1
	Node * n = network->getNode(2, 0, 0);
    	while(frameCount < maxCount){
        	frameCount++;
       		 isi.findNextImage();
		network->doDestin(isi.getGrayImageFloat());
		if(frameCount%10==0){
		printf("frameCount%d\n",frameCount);		
    		
		}
	
    }
   	
	network->save("treeminer.dst");
	#else
	network->load("treeminer.dst");
	#endif
/*-----------------------------------------------test---------------------------------------------------*/
  	//  Destin * dn = network->getNetwork();
	for(int i=1;i<1000;i++){
		stringstream ss;
		string str;
		ss<<i+1;
		ss>>str;
		string name2="/home/zhangzinan/handwrite_dataset/"NUMBER"/"NUMBER"/"+str+".png";
		ImageSouceImpl test;
		test.addImage(name2);
		for(int i=0;i<10;i++)
		{	
			test.findNextImage();
			network->TestDestin(test.getGrayImageFloat());	
		}
		char name1[256];
		sprintf(name1, "/home/zhangzinan/handwrite_dataset/"NUMBER"/"NUMBER"_destin_%d.txt", frameCount);
		ofstream outfile(name1,ofstream::out|ofstream::app);
		if(!outfile)
		{
			cerr<<"open train.txt erro!"<<endl;
			exit(1);
		}
		Node * n = network->getNode(2, 0, 0);
		std::stringstream ss1;
		std::string str1;
		outfile<<";;"<<endl;
	for(int i = 0; i < n->nb ; i++){	
        	outfile<<n->pBelief[i]<<",";
		printf("%f ", n->pBelief[i]);
    	}
 	n = network->getNode(2, 0, 1);
	for(int i = 0; i < n->nb ; i++){	
        	outfile<<n->pBelief[i]<<",";
		printf("%f ", n->pBelief[i]);
    	}
 	n = network->getNode(2,1, 0);
	for(int i = 0; i < n->nb ; i++){	
        	outfile<<n->pBelief[i]<<",";
		printf("%f ", n->pBelief[i]);
    	}
	n = network->getNode(2, 1, 1);
	for(int i = 0; i < n->nb ; i++){	
        	outfile<<n->pBelief[i]<<",";
		printf("%f ", n->pBelief[i]);
    	}
	
	//outfile.put(network->printNodeBeliefs(7,0,0));
	outfile.close();
		}
	

	return 0;

}
