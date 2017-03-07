#What criteria affects workload factor? What does a value of 1, 2, or 4 signify?
The workload factor should be affected by the number of cores and spindles.
A value of 2 (or higher) normally means the nodes(cluster) are IO bound.
A value lower than 2 means that it is CPU bound.
If there are more than twice as much cores as there are spindles, higher values than 2 should make no change.


#Adjustments I made
> OS MEMORY - I reduced the percentage of memory dedicated to OS from 10% to 5% because the worker nodes have 512gb of RAM. 10% is a bit too much.

> YARN RM PROPERTIES
>> yarn.scheduler.maximum-allocation-vcores
I changed to 18. It's 75% of the vcores per node.
It's just the maximum value for allocated vcores, so for more demanding jobs that need it, this value should be more than sufficient (spark executors, for instance). It's not 100% because that way nothing else would run on a single node every time a specific app ran. 75% seems balanced enough to me.

> Task Container Settings
Because we are not memory bound in any way, I pushed these.
>> mapreduce.map.memory.mb
Total memory/total #vcores/2 = ~10gb
I changed it to 12gb instead of 10gb just because there's a lot of ram per node (512gb)

>> mapreduce.map.java.opts.max.heap
80% of the previous parameter

>> mapreduce.reduce.memory.mb
Total memory/total #vcores/2 = ~10gb
I changed it to 16gb just because there's a lot of ram per node (512gb)
I pushed it furhter than the mapper because they usually need more ram than the mapper.
I feel like that more than this could result in side effects in GC or other undesired behaviours.

>> mapreduce.reduce.java.opts.max.heap
80% of the previous parameter


>MapReduce AM Settings
>> yarn.app.mapreduce.am.resource.mb
Changed it to 1024. I believe it was a typo. 1gb is usually enough.
Just a side note:
I don't recall the exact details, but I have seen a specific series of events when reading parquet that needed this to be set at 1.5gb. I have done it in one of the customers cluster.
I think this is it - not sure:
"Normally, AM’s 1G java heap size is enough for many jobs. However, if the job is to write lots of parquet files, during commit phase of the job, AM will call ParquetOutputCommitter.commitJob(). It will first read footers of all output parquet files, and write the metadata file named “_metadata” in output directory."
https://www.mapr.com/blog/best-practices-yarn-resource-management


> Gateway Settings
>> mapreduce.map.memory.mb
>> mapreduce.reduce.memory.mb
I set these as the same as the container settings. These are client-side settings that can be overridden, so this is just a suggestion in my opinion.