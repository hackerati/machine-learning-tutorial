#Big Data

##Example Task: Summing Rows In a Table

Let's say we have a table, and we want the sum of the values for each row.
If this table is sufficiently small, it makes sense to store and process the data on one machine.

However, as the size of the table gets very large, the time it takes to load the whole table and process each row becomes exceedingly long.

Instead of storing the table and processing it on one machine, we can use the Hadoop Distributed File System (HDFS), which stores files in smaller parts ("blocks") across many machines. These small blocks can be loaded quickly, and procesed in parallel on the nodes in the cluster.

*Reduce* and *map* are some of the most common operations performed on data stored in HDFS. In our example task, we are *reducing* rows to one value by summing. *Map* takes a row, and transforms each value in the row, producing a new row.

# Machine Learning

ML is a class of algorithms that can "learn" from data. Such algorithms are frequently used in **classification** and **regression** problems. A classification problem may be something like this: you have a song, and you want to know if it is rock, jazz, or classical. Given enough training data (songs labeled as rock, jazz, or classical), a computer can learn to classify new songs under one of these categories. In general, a classifier must decide between two or more categories given some input. In a regression problem, you are given some data points, and you attempt to fit a function to that data. Given this function, you can estimate the value of data points which you haven't seen yet.
