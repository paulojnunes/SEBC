#Check vm.swappiness on all your nodes

[root@xpandsebc1 ~]# sysctl vm.swappiness=10
[root@xpandsebc1 ~]# cat /proc/sys/vm/swappiness
1
[root@xpandsebc1 ~]# nano /etc/sysctl.conf
[root@xpandsebc1 ~]# cat /etc/sysctl.conf | grep swappiness
vm.swappiness=1

#Show the mount attributes of all volumes
[root@xpandsebc1 ~]$ mount -l
/dev/sda1 on / type ext4 (rw)
proc on /proc type proc (rw)
sysfs on /sys type sysfs (rw)
devpts on /dev/pts type devpts (rw,gid=5,mode=620)
tmpfs on /dev/shm type tmpfs (rw)
/dev/sda2 on /var type ext4 (rw)
/dev/sdc1 on /data type ext4 (rw,noatime)
none on /proc/sys/fs/binfmt_misc type binfmt_misc (rw)
/dev/sdb1 on /mnt/resource type ext4 (rw)

[root@xpandsebc1 ~]# cat /etc/fstab

#
# /etc/fstab
# Created by anaconda on Tue Sep 20 09:49:49 2016
#
# Accessible filesystems, by reference, are maintained under '/dev/disk'
# See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info
#
UUID=6162c0e4-fec6-4b94-b22a-d28809347357 /                       ext4    defaults        1 1
UUID=d474cdf6-a881-44c7-965b-cc150fa61c7e /var                    ext4    defaults        1 2
tmpfs                   /dev/shm                tmpfs   defaults        0 0
devpts                  /dev/pts                devpts  gid=5,mode=620  0 0
sysfs                   /sys                    sysfs   defaults        0 0
proc                    /proc                   proc    defaults        0 0


#Hadoop Data
UUID=1c76d67a-e591-42f3-b95b-b8e26ddd5126                               /data                   ext4    defaults,noatime        1 2


[root@xpandsebc1 ~]# df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        20G  733M   18G   4% /
tmpfs           6.9G     0  6.9G   0% /dev/shm
/dev/sda2        30G  116M   28G   1% /var
/dev/sdc1        50G   52M   47G   1% /data
/dev/sdb1        28G  2.1G   24G   8% /mnt/resource


#Show the reserve space of any non-root, ext-based volumes
[root@xpandsebc1 ~]# tune2fs -l /dev/sda1 | grep Reserved
Reserved block count:     262144
Reserved GDT blocks:      1022
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)

[root@xpandsebc1 ~]# tune2fs -l /dev/sda2 | grep Reserved
Reserved block count:     393203
Reserved GDT blocks:      1022
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)

[root@xpandsebc1 ~]# tune2fs -l /dev/sdb1 | grep Reserved
Reserved block count:     366988
Reserved GDT blocks:      1022
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)

[root@xpandsebc1 ~]# tune2fs -l /dev/sdc1 | grep Reserved
Reserved block count:     655351
Reserved GDT blocks:      1020
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)


# Disable transparent hugepage support
[root@xpandsebc1 ~]# echo never > /sys/kernel/mm/transparent_hugepage/enabled
[root@xpandsebc1 ~]# echo never > /sys/kernel/mm/transparent_hugepage/defrag

[root@xpandsebc1 ~]# cat /sys/kernel/mm/transparent_hugepage/enabled
always madvise [never]
[root@xpandsebc1 ~]# cat /sys/kernel/mm/transparent_hugepage/defrag
always madvise [never]

[root@xpandsebc1 ~]# cat /etc/rc.local
#!/bin/sh
#
# This script will be executed *after* all the other init scripts.
# You can put your own initialization stuff in here if you don't
# want to do the full Sys V style init stuff.

touch /var/lock/subsys/local
for i in `ls /sys/block/sd*/queue/scheduler`
do
echo "noop" > $i
done
echo never > /sys/kernel/mm/transparent_hugepage/enabled
echo never > /sys/kernel/mm/transparent_hugepage/defrag


#List your network interface configuration
[root@xpandsebc1 ~]# cat /etc/sysctl.conf | grep ipv6
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1

[root@xpandsebc1 ~]#  cat /etc/sysconfig/network
HOSTNAME=xpandsebc1.xpand.com
NETWORKING=yes
NETWORKING_IPV6=no
IPV6INIT=no

[root@xpand1 ~]# ifconfig
eth0      Link encap:Ethernet  HWaddr 00:0D:3A:27:31:42
          inet addr:10.0.0.4  Bcast:10.0.0.255  Mask:255.255.255.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:1912 errors:0 dropped:0 overruns:0 frame:0
          TX packets:2044 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:446699 (436.2 KiB)  TX bytes:324364 (316.7 KiB)

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 b)  TX bytes:0 (0.0 b)


[root@xpand1 ~]# cat /etc/hosts
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
10.0.0.4 xpandsebc1.xpand.com xpandsebc1
10.0.0.5 xpandsebc2.xpand.com xpandsebc2
10.0.0.6 xpandsebc3.xpand.com xpandsebc3
10.0.0.7 xpandsebc4.xpand.com xpandsebc4
10.0.0.8 xpandsebc5.xpand.com xpandsebc5

#List forward and reverse host lookups using getent or nslookup
[root@xpandsebc1 ~]# hostname --fqdn
xpandsebc1.xpand.com


[root@xpandsebc1 ~]#  cat /etc/sysconfig/network
HOSTNAME=xpandsebc1.xpand.com
NETWORKING=yes
NETWORKING_IPV6=no
IPV6INIT=no

#Can't set up a DNS server properly. Will use /etc/hosts for now
#Still haven't configured Azure DNS Server


#Show the nscd service is running
[root@xpandsebc1 ~]# service nscd status
nscd (pid 1486) is running...

#Show the ntpd service is running
[root@xpandsebc1 ~]# service ntpd status
ntpd (pid  1565) is running...