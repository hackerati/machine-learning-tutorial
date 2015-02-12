# Before Course
## Materials
- Train / Validate / Evaluate datasets
- AWS Credits/Credentials ready to give to students

## Students
- Sign up, Login to AWS
- Download AWS CLI
- Get Key/Secret, put in AWS CLI or bash script
- Install Apache Spark locally
- Verify you can create an EC2 instance (make sure to shut it down!)

# Course Structure
## (20 minutes) Introduction
    - (5 min) Big Data
        - abundance of data available
        - lots of interesting things to do with it
        - need distributed computing tools to efficiently process/develop solutions
        - more efficient to pull data over the network to run jobs (not enough memory/storage on one machine)
    - (5 min) Machine Learning
        - predicting labels or values for data (classification v. regression)
        - focus for this course is CLASSIFICATION
        - train a classifier with labeled data
        - validate a classifier by seeing how well labels match up with predictions
        - evaluate classifier in a contest or by viewing business metrics (bottom line, etc.)
    - (5 min) Tools
        - Hadoop
            - distributed file storage and compute engine (Map Reduce)
        - Spark
            - distributed computation engine with built-in machine learning tools, very fast
        - Amazon Web Services (AWS)
            - cloud computing platform
            - EC2 - elastic compute cloud (cloud servers)
    - (5 min) Task
        - We're going to spin up a Spark Cluster on EC2 servers in order to do a machine learning task
        - Task: try to get the best results for classifying {{DATA}}
## (20 minutes) Dev Setup
    - (2 min) Clone scripts
    - (10 min) Create cluster
    - (5 min) Load data onto cluster
    - (3 min) Run basic test
## (30 minutes) Run Example Code
    - (10 min) Run code as is (shitty result)
        - explain graphs and metrics and parameters
    - (10 min) Change some parameters with explanation
        - explain iterative improvements
            - preprocessing
            - featurizing
            - dimensionality reduction
            - preventing overfitting
    - (10 min) Time for some questions?
## (40 minutes) Interactive - Play with Data
    - change classifiers
    - change columns
    - do featurizing
    - do preprocessing
    - look at outputs, iterate
    - submit final classifier
    - instructor assistance
## (10 minutes) Wrap It Up
    - next steps
        - put into production (webapp)
        - future courses (big data, machine learning)
    - see who got the best results (top 2 or 3 people/teams)
