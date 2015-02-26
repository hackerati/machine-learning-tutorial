# Machine Learning Project: Movie Recommendation!

We will be using the [MovieLens dataset](http://grouplens.org/datasets/movielens/) in order to recommend movies to you, based on a few example ratings that you will fill out. We will use the 1 million ratings version of the dataset, which has ratings from 6000 users on 4000 movies. 

The recommendation techique is called collaborative filtering. The idea is to fill in the missing entries of a user - movie_rating association matrix. MLlib currently supports model-based collaborative filtering, in which users and products are described by a small set of latent factors that can be used to predict missing entries.

We will use MLlib and the alternating least squares (ALS) algorithm to learn these latent factors. The implementation in MLlib has the following parameters:

**numBlocks** is the number of blocks used to parallelize computation (set to -1 to auto-configure).
rank is the number of latent factors in the model.

**iterations** is the number of iterations to run.

**lambda** specifies the regularization parameter in ALS.

**implicitPrefs** specifies whether to use the explicit feedback ALS variant or one adapted for implicit feedback data.

**alpha** is a parameter applicable to the implicit feedback variant of ALS that governs the baseline confidence in preference observations.






# Machine Learning Project: Music Recommendation!

We will use the [million song dataset](http://www.kaggle.com/c/msdchallenge/data) [1]. 
This is available as an [Amazon Public Dataset snapshot](http://aws.amazon.com/datasets/6468931156960467), 
which can be attached to an Amazon EC2 virtual machine. To set up, you create an EBS disk instance from snap-5178cf30.

The challenge is to create the best possible recommendation system. Various features are included for the songs (tempo, title, year, [bag-of-words] lyrics, loudness, mfcc-like features, etc.)

Listening history of users is also provided. You can play around with classifiers and feature sets, and try to find the best combination for optimal recommendation accuracy.


[1] Thierry Bertin-Mahieux, Daniel P.W. Ellis, Brian Whitman, and Paul Lamere. 
The Million Song Dataset. In Proceedings of the 12th International Society
for Music Information Retrieval Conference (ISMIR 2011), 2011.
