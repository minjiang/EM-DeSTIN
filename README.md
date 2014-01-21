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
* Min JIANG, Yulong DING , Ben Goertzel, Zhongqiang HUANG and Fei CHAO, Improving Machine Vision via Incorporating Expectation-Maximization into Deep Spatio-Temporal Learning, submitted to IJCNN'2014.

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
