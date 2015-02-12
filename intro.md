#Big Data

##Example Task
Let's say we have a table, and we want the sum of the values for each row.
If this table is sufficiently small, it makes sense to store and process the data on one machine.

However, as the size of the table gets very large, the time it takes to load the whole table and process each row becomes exceedingly long.

Instead of storing the table and processing it on one machine, we can use the Hadoop Distributed File System (HDFS), which stores files in smaller parts ("blocks") across many machines.
These small blocks can be loaded quickly, and procesed in parallel on the nodes in the cluster.

Aside from storing large volumes of data in a distributed manner, HDFS is commonly used for two types of tasks: __reduce__, and __map__. In our example task, we are __reducing__ rows to one value by summing. __Map__ takes a row, and transforms each value in the row, producing a new row.
