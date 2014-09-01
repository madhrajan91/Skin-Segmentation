Skin-Segmentation
=================
Skin-Segmentation using Logistic Regression. 

The examples are listed as either skin types or non-skin types
Data Set Information:

The skin dataset is collected by randomly sampling B,G,R values from face images of various age groups (young, middle, and old), race groups (white, black, and asian), and genders obtained from FERET database and PAL database. Total learning sample size is 245057; out of which 50859 is the skin samples and 194198 is non-skin samples. Color FERET Image Database: [Web Link], PAL Face Database from Productive Aging Laboratory, The University of Texas at Dallas: [Web Link]. 

Attribute Information:
This dataset is of the dimension 245057 * 4 where first three columns are B,G,R (x1,x2, and x3 features) values and fourth column is of the class labels (decision variable y).

Usage:
run the sourcefile skin_segmentation.m using matlab or octave.
to change the inputs/testset data modify values in in.txt. It consists of four columns where the first column is a 1 and the rest correspond to B, G and R values respectively. Once you run, after training the algorithm computes a probability between 0 and 1 which the probablity of the given pixels being a skin.
i.e. p(y=1|B,G,R)

Logisitic regression was used to classify the dataset.
Training set Accuracy without regularization : 91.89
Training set Accuracy with regularization(regularization parameter lambda=0.5): 91.92

References:
Rajen Bhatt, Abhinav Dhall, 'Skin Segmentation Dataset', UCI Machine Learning Repository
Machine Learning by Andrew Ng at Coursera
