[root@xpand1 ~]# sysctl vm.swappiness=10
[root@xpand1 ~]# cat /proc/sys/vm/swappiness
1
[root@xpand1 ~]# nano /etc/sysctl.conf
[root@xpand1 ~]# cat /etc/sysctl.conf | grep swappiness
vm.swappiness=1