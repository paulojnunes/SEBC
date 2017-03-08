Treasure Hunt
===================

1. The small-jobs "ubertask" optimization runs "sufficiently small" jobs sequentially within a single JVM. "Small" is defined by the maxmaps, maxreduces, and maxbytes settings.

2. Administration > Settings > default_realm property

3. All core CDH services have a property for enabling Kerberos: HDFS, YARN, Oozie, Zookeeper, Hue, Hive and Cloudera Management Services

4. We can use the Cloudera Manager upgrade wizard to upgrade the agent software (and, optionally, the JDK). Alternatively, we can install the agent and JDK software manually.

5. SELECT cpu_system_rate + cpu_user_rate WHERE serviceName = hue

6. HiveServer2, Hive Gateway and Hive Metastore Server

7. The  following steps are needed to integrate Kerberos with CM:
	1. There is a working Kerberos key distribution center (KDC) available and reachable.
		1. To setup it up, you need to install the needed packages on the server`krb5-server krb5-libs krb5-auth-dialo/g krb5-workstation`
		2. Edit these files accordingly `/var/kerberos/krb5kdc/kdc.conf /var/kerberos/krb5kdc/kadm5.acl `
		3. Create the support database and the admin users using `kdb5_util`and `kadmin.local`respectively.
		4. Start the `krb5kdc` and the `kadmin`
	2. `openldap-clients` package is installed on the Cloudera Manager Server host
	3. Install`krb5-workstation` `krb5-libs` on every hosts
	4. Oozie and Hue require that the realm support renewable tickets
	5. If using AES-256 Encryption, install the JCE Policy File
	6. Get or create a Kerberos admin Principal for the Cloudera Manager Server
	7.  Enable Kerberos Using the Wizard. Administration > Security > Activate Kerberos
	8. After enabling it:
    * Create the HDFS Superuser
    * Get or create a Kerberos Principal for each user account
    * Prepare the cluster for each user (setting up Linux users etc)