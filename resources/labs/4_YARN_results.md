YARN Results
===================
> **Note:**
All nodes have just one disk.
Unfortunately, one of them has the namenode and datanode roles because there's only 4 hosts besides the edge node.
Hence, the namenode crashed when I set too many vcores (high IO concurrency). Fsyncs were taking too long. Journal nodes were also naturally complaining, so I stopped the tests and I have plenty to work on now.

**The parameters used and times of your slowest and fastest runs**

----------


Slowest Run
-------------
- No. Mapper containers: 6
- No. Reducer containers: 9
- No. Container memory: 4096

>**Teragen**
real    2m13.259s
user    0m5.503s
sys     0m0.321s

----
>**Terasort**
real    4m34.367s
user    0m7.526s
sys     0m0.467s

Fatest Run
-------------
- No. Mapper containers: 2
- No. Reducer containers: 6
- No. Container memory: 1024

>**Teragen**
real    1m59.785s
user    0m5.428s
sys     0m0.301s

----
>**Terasort**
real    1m33.097s
user    0m6.973s
sys     0m0.402s


Conclusion
-----------
There needs to be a balance between the no. maps/reduces and the available resources -> vcores + memory
More memory doesn't mean the job is going to be faster because it implies less concurrency.
To sum up, the best result was achieved when executed with only 1Gb and 6 reducers, which the terasort benefits from. There was more write concurrency without compromising the IO performance by that much.