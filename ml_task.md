# Machine Learning Project: Movie Recommendation!

We will be using the [MovieLens dataset](http://grouplens.org/datasets/movielens/) in order to recommend movies to you, based on a few example ratings that you will fill out. We will use the 1 million ratings version of the dataset, which has ratings from 6000 users on 4000 movies. 

The recommendation techique is called collaborative filtering. The idea is to fill in the missing entries of a user - movie_rating association matrix.

We will use MLlib and the alternating least squares (ALS) algorithm to learn these latent factors. MLlib currently supports model-based collaborative filtering, in which users and products are described by a small set of latent factors that can be used to predict missing entries. 

The implementation in MLlib has the following parameters:

**numBlocks** is the number of blocks used to parallelize computation (set to -1 to auto-configure).

**rank** is the number of latent factors in the model.

**iterations** is the number of iterations to run.

**lambda** specifies the regularization parameter in ALS.

**implicitPrefs** specifies whether to use the explicit feedback ALS variant or one adapted for implicit feedback data.

**alpha** is a parameter applicable to the implicit feedback variant of ALS that governs the baseline confidence in preference observations.

## Data Set
We will use "ratings.dat" and "movies.dat". Ratings are in "ratings.dat" in the following format:

```
UserID::MovieID::Rating::Timestamp
```

Movie information is in "movies.dat" in the following format:

```
MovieID::Title::Genres
```

## Create Training Examples
Run rateMovies, and then enter your ratings for some sample movies:
```
python bin/rateMovies
```
These ratings will be compared with ratings of other users, in order to recommend movies that you may like.

## Check out the code

MovieLensALS.py is the main file that does the model learning and recommendation.

'For any Spark computation, we first create a SparkConf object and use it to create a SparkContext object. Since we will be using spark-submit to execute the programs in this tutorial (more on spark-submit in the next section), we only need to configure the executor memory allocation and give the program a name, e.g. “MovieLensALS”, to identify it in Spark’s web UI. In local mode, the web UI can be access at localhost:4040 during the execution of a program.'

```
conf = SparkConf() \
  .setAppName("MovieLensALS") \
  .set("spark.executor.memory", "2g")
sc = SparkContext(conf=conf)
```

## Running the code
spark-submit is the recommended tool for running Spark applications.

```
~/spark/bin/spark-submit MovieLensALS.py hdfs:/data/ml-1m ~/machine-learning/bin/personalRatings.txt
```

## Splitting the data
In machine learning tasks, we usually split the data into three non-overlapping sets: training, validation, and test.

We will use MLlib’s ALS to train a MatrixFactorizationModel, which takes a RDD[(user, product, rating)] object as input. ALS has training parameters as shown above. To determine a good combination of the training parameters, we split the data into three non-overlapping subsets, based on the last digit of the timestamp, and cache them. We will train multiple models based on the training set, select the best model on the validation set based on RMSE (Root Mean Squared Error), and finally evaluate the best model on the test set. We also add your ratings to the training set to make recommendations for you. We hold the training, validation, and test sets in memory by calling cache because we need to visit them multiple times.


## Training
Among the training paramters of ALS, the most important ones are rank, lambda (regularization constant), and number of iterations.

Ideally, we want to try a large number of combinations of them in order to find the best one. Due to time constraint, we will test only 8 combinations resulting from the cross product of 2 different ranks (8 and 12), 2 different lambdas (1.0 and 10.0), and two different numbers of iterations (10 and 20). We use the provided method computeRmse to compute the RMSE on the validation set for each model. The model with the smallest RMSE on the validation set becomes the one selected and its RMSE on the test set is used as the final metric.
