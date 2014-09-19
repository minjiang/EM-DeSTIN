EMDeSTIN
=============

Papers about DeSTIN
-------------------
* http://web.eecs.utk.edu/~itamar/Papers/BICA2009.pdf
* http://www.ece.utk.edu/~itamar/Papers/BICA2011T.pdf
* http://web.eecs.utk.edu/~itamar/Papers/AI_MAG_2011.pdf
* http://research.microsoft.com/en-us/um/people/dongyu/nips2009/papers/Arel-DeSTIN_NIPS%20tpk2.pdf
* http://goertzel.org/Uniform_DeSTIN_paper.pdf

Papers about online EM
-------------------

* Olivier Capp´ e and Eric Moulines. Online em algorithmfor latent data models. Journal of the Royal Statistical Society, 2008
* Olivier Capp´ e. Online expectation-maximisation. Mix-tures: Estimation and Applications, pages 153, 2011.

Paper about EM-DeSTIN
-------------------
Please cite this paper as:

* Min Jiang, Yulong Ding, Ben Goertzel, Zhongqiang Huang, Changle Zhou, Fei Chao: Improving machine vision via incorporating expectation-maximization into Deep Spatio-Temporal learning. IJCNN 2014: 1804-1811

@inproceedings{DBLP:conf/ijcnn/JiangDGHZC14,
  author    = {Min Jiang and
               Yulong Ding and
               Ben Goertzel and
               Zhongqiang Huang and
               Changle Zhou and
               Fei Chao},
  title     = {Improving machine vision via incorporating expectation-maximization
               into Deep Spatio-Temporal learning},
  booktitle = {2014 International Joint Conference on Neural Networks, {IJCNN} 2014,
               Beijing, China, July 6-11, 2014},
  year      = {2014},
  pages     = {1804--1811},
  crossref  = {DBLP:conf/ijcnn/2014},
  url       = {http://dx.doi.org/10.1109/IJCNN.2014.6889723}, Add to Citavi project by DOI
  doi       = {10.1109/IJCNN.2014.6889723},
  timestamp = {Fri, 19 Sep 2014 19:12:06 +0200},
  biburl    = {http://dblp.uni-trier.de/rec/bib/conf/ijcnn/JiangDGHZC14},
  bibsource = {dblp computer science bibliography, http://dblp.org}
}


Building
--------
Development has been done with Ubuntu 12.

Dependencies:
CMake ( >= 2.8 )
OpenCV 

Its been hard to pin down the exact opencv packages required for different versions of Ubuntu. Until we get this straightened out, use synaptic or the Ubuntu Software Center and do a search for opencv and install all the opencv related libs you can see. There may be around 10 different opencv libraries. 

Building:

    $ cd Destin
    $ cmake . 
    $ make
    
Rebuilding:
    
During development sometimes CMake is not able to detect dependencies between the different built libraries. So it is recommened
to do a "make clean" and "make -j4" (j4 lets you use multiple cores) from the Destin directory to make sure everyting is building fresh.

@made by DYL and MJ
