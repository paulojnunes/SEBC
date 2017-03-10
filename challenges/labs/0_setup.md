# Challenge Setup

### First steps

To use `ansible`, I installed the `epel` repo on the first host:
```
yum install epel-release
```

Installed `ansible` to interact with multiple hosts:
```
yum install -y ansible
```

SSH Login Without Password from the first host to the rest of the nodes
```
[root@challengesebc1 ~]# ssh-keygen
[root@challengesebc1 ~]# ssh-copy-id -i ~/.ssh/id_rsa.pub challengesebc2
[root@challengesebc1 ~]# ssh-copy-id -i ~/.ssh/id_rsa.pub challengesebc3
[root@challengesebc1 ~]# ssh-copy-id -i ~/.ssh/id_rsa.pub challengesebc4
[root@challengesebc1 ~]# ssh-copy-id -i ~/.ssh/id_rsa.pub challengesebc5
```

In the edge node, added the following to /etc/ansible/hosts:
```
localhost ansible_connection=local
challengesebc2
challengesebc3
challengesebc4
challengesebc5
```


### Instances

```
Cloud Provider: Azure
Region: West Europe

```

### Public ip addresses and hostnames

```
52.169.116.255 challengesebc1.northeurope.cloudapp.azure.com
52.169.117.44  challengesebc2.northeurope.cloudapp.azure.com
52.169.118.176 challengesebc3.northeurope.cloudapp.azure.com
52.169.114.252 challengesebc4.northeurope.cloudapp.azure.com
52.169.117.249 challengesebc5.northeurope.cloudapp.azure.com
```

### Private ip addresses and hostnames

```
10.0.1.4 challengesebc1.xpand.com
10.0.1.5 challengesebc2.xpand.com
10.0.1.6 challengesebc3.xpand.com
10.0.1.7 challengesebc4.xpand.com
10.0.1.8 challengesebc5.xpand.com
```

### Linux Release
```
Linux Release: CentOS 6.8

[root@challengesebc1 ~]# cat /etc/centos-release
CentOS release 6.8 (Final)
```

### Volume space

```

[root@challengesebc1 ~]# ansible all -a "df -h"
localhost | SUCCESS | rc=0 >>
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        20G  780M   18G   5% /
tmpfs           6.9G  172K  6.9G   1% /dev/shm
/dev/sda2        30G  159M   28G   1% /var
/dev/sdc1        50G   52M   47G   1% /data
/dev/sdb1        28G  2.1G   24G   8% /mnt/resource

challengesebc3 | SUCCESS | rc=0 >>
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        20G  735M   18G   4% /
tmpfs           6.9G     0  6.9G   0% /dev/shm
/dev/sda2        30G  135M   28G   1% /var
/dev/sdc1        50G   52M   47G   1% /data
/dev/sdb1        28G  2.1G   24G   8% /mnt/resource

challengesebc5 | SUCCESS | rc=0 >>
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        20G  735M   18G   4% /
tmpfs           6.9G     0  6.9G   0% /dev/shm
/dev/sda2        30G  135M   28G   1% /var
/dev/sdc1        50G   52M   47G   1% /data
/dev/sdb1        28G  2.1G   24G   8% /mnt/resource

challengesebc2 | SUCCESS | rc=0 >>
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        20G  735M   18G   4% /
tmpfs           6.9G     0  6.9G   0% /dev/shm
/dev/sda2        30G  135M   28G   1% /var
/dev/sdc1        50G   52M   47G   1% /data
/dev/sdb1        28G  2.1G   24G   8% /mnt/resource

challengesebc4 | SUCCESS | rc=0 >>
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        20G  735M   18G   4% /
tmpfs           6.9G     0  6.9G   0% /dev/shm
/dev/sda2        30G  135M   28G   1% /var
/dev/sdc1        50G   52M   47G   1% /data
/dev/sdb1        28G  2.1G   24G   8% /mnt/resource

```


### `yum repolist enabled`
```
[root@challengesebc1 ~]# ansible all -a "yum repolist enabled"


challengesebc4 | SUCCESS | rc=0 >>
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
repo id              repo name                                            status
base                 CentOS-6 - Base                                      6,696
extras               CentOS-6 - Extras                                       64
openlogic            CentOS-6 - openlogic packages for x86_64                36
updates              CentOS-6 - Updates                                     959
repolist: 7,755

challengesebc5 | SUCCESS | rc=0 >>
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
repo id              repo name                                            status
base                 CentOS-6 - Base                                      6,696
extras               CentOS-6 - Extras                                       64
openlogic            CentOS-6 - openlogic packages for x86_64                36
updates              CentOS-6 - Updates                                     959
repolist: 7,755

challengesebc2 | SUCCESS | rc=0 >>
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
repo id              repo name                                            status
base                 CentOS-6 - Base                                      6,696
extras               CentOS-6 - Extras                                       64
openlogic            CentOS-6 - openlogic packages for x86_64                36
updates              CentOS-6 - Updates                                     959
repolist: 7,755

challengesebc3 | SUCCESS | rc=0 >>
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
repo id              repo name                                            status
base                 CentOS-6 - Base                                      6,696
extras               CentOS-6 - Extras                                       64
openlogic            CentOS-6 - openlogic packages for x86_64                36
updates              CentOS-6 - Updates                                     959
repolist: 7,755

localhost | SUCCESS | rc=0 >>
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * epel: mirror.bytemark.co.uk
repo id           repo name                                               status
base              CentOS-6 - Base                                          6,696
epel              Extra Packages for Enterprise Linux 6 - x86_64          12,345
extras            CentOS-6 - Extras                                           64
openlogic         CentOS-6 - openlogic packages for x86_64                    36
updates           CentOS-6 - Updates                                         959
repolist: 20,100

```


### Add users and groups

Add users `neymar` and `ronaldo`:
```

[root@challengesebc1 ~]# ansible all -a "useradd neymar -u 2010"
localhost | SUCCESS | rc=0 >>


challengesebc5 | SUCCESS | rc=0 >>


challengesebc3 | SUCCESS | rc=0 >>


challengesebc4 | SUCCESS | rc=0 >>


challengesebc2 | SUCCESS | rc=0 >>



[root@challengesebc1 ~]# ansible all -a "useradd ronaldo -u 2016"
localhost | SUCCESS | rc=0 >>


challengesebc3 | SUCCESS | rc=0 >>


challengesebc4 | SUCCESS | rc=0 >>


challengesebc5 | SUCCESS | rc=0 >>


challengesebc2 | SUCCESS | rc=0 >>


```


Create the groups:
```

[root@challengesebc1 ~]# ansible all -a "groupadd barca"
localhost | SUCCESS | rc=0 >>


challengesebc3 | SUCCESS | rc=0 >>


challengesebc4 | SUCCESS | rc=0 >>


challengesebc5 | SUCCESS | rc=0 >>


challengesebc2 | SUCCESS | rc=0 >>


[root@challengesebc1 ~]#
[root@challengesebc1 ~]# ansible all -a "groupadd merengues"
localhost | SUCCESS | rc=0 >>


challengesebc3 | SUCCESS | rc=0 >>


challengesebc4 | SUCCESS | rc=0 >>


challengesebc2 | SUCCESS | rc=0 >>


challengesebc5 | SUCCESS | rc=0 >>


```


Assign the groups:
```
[root@challengesebc1 ~]# ansible all -a "usermod -aG barca ronaldo"
localhost | SUCCESS | rc=0 >>


challengesebc4 | SUCCESS | rc=0 >>


challengesebc3 | SUCCESS | rc=0 >>


challengesebc5 | SUCCESS | rc=0 >>


challengesebc2 | SUCCESS | rc=0 >>

[root@challengesebc1 ~]# ansible all -a "usermod -aG merengues neymar"
localhost | SUCCESS | rc=0 >>


challengesebc3 | SUCCESS | rc=0 >>


challengesebc4 | SUCCESS | rc=0 >>


challengesebc2 | SUCCESS | rc=0 >>


challengesebc5 | SUCCESS | rc=0 >>


```


### List `/etc/passwd` entries for users

```

[root@challengesebc1 ~]# ansible all -a "getent passwd neymar"
localhost | SUCCESS | rc=0 >>
neymar:x:2010:2010::/home/neymar:/bin/bash

challengesebc3 | SUCCESS | rc=0 >>
neymar:x:2010:2010::/home/neymar:/bin/bash

challengesebc4 | SUCCESS | rc=0 >>
neymar:x:2010:2010::/home/neymar:/bin/bash

challengesebc5 | SUCCESS | rc=0 >>
neymar:x:2010:2010::/home/neymar:/bin/bash

challengesebc2 | SUCCESS | rc=0 >>
neymar:x:2010:2010::/home/neymar:/bin/bash



[root@challengesebc1 ~]# ansible all -a "getent passwd ronaldo"
localhost | SUCCESS | rc=0 >>
ronaldo:x:2016:2016::/home/ronaldo:/bin/bash

challengesebc4 | SUCCESS | rc=0 >>
ronaldo:x:2016:2016::/home/ronaldo:/bin/bash

challengesebc3 | SUCCESS | rc=0 >>
ronaldo:x:2016:2016::/home/ronaldo:/bin/bash

challengesebc5 | SUCCESS | rc=0 >>
ronaldo:x:2016:2016::/home/ronaldo:/bin/bash

challengesebc2 | SUCCESS | rc=0 >>
ronaldo:x:2016:2016::/home/ronaldo:/bin/bash

```


### List `/etc/group` entries for groups

```
[root@challengesebc1 ~]# ansible all -a "getent group barca"
localhost | SUCCESS | rc=0 >>
barca:x:2017:ronaldo

challengesebc3 | SUCCESS | rc=0 >>
barca:x:2017:ronaldo

challengesebc4 | SUCCESS | rc=0 >>
barca:x:2017:ronaldo

challengesebc5 | SUCCESS | rc=0 >>
barca:x:2017:ronaldo

challengesebc2 | SUCCESS | rc=0 >>
barca:x:2017:ronaldo

[root@challengesebc1 ~]#
[root@challengesebc1 ~]# ansible all -a "getent group merengues"
localhost | SUCCESS | rc=0 >>
merengues:x:2018:neymar

challengesebc3 | SUCCESS | rc=0 >>
merengues:x:2018:neymar

challengesebc4 | SUCCESS | rc=0 >>
merengues:x:2018:neymar

challengesebc5 | SUCCESS | rc=0 >>
merengues:x:2018:neymar

challengesebc2 | SUCCESS | rc=0 >>
merengues:x:2018:neymar

```