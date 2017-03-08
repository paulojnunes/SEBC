```
[logging]
 default = FILE:/var/log/krb5libs.log
 kdc = FILE:/var/log/krb5kdc.log
 admin_server = FILE:/var/log/kadmind.log

[libdefaults]
 default_realm = XPAND.COM
 dns_lookup_realm = false
 dns_lookup_kdc = false
 ticket_lifetime = 24h
 renew_lifetime = 7d
 forwardable = true
 udp_preference_limit = 1
 default_tgs_enctypes = aes256-cts
 default_tkt_enctypes = aes256-cts

[realms] 
  XPAND.COM = {
  kdc = xpandsebc1.xpand.com
  admin_server = xpandsebc1.xpand.com
 }

[domain_realm]
   .xpand.com = XPAND.COM
   xpand.com = XPAND.COM
```