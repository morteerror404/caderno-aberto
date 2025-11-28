

```
https://nmap.org/nsedoc/scripts/
```

---

```bash
nmap -sT -sV -p 53 -sU -vvv -O
```

```
nmap -vvv -O -sV -sS -T4 -A -sC --webxml --stylesheet https://raw.githubusercontent.com/honze-net/nmap-bootstrap-xsl/master/nmap-bootstrap.xsl --dns-servers 1.1.1.1,1.0.0.1,9.9.9.9,149.112.112.112,8.8.8.8,8.8.4.4 --script vulners
```

```bash 
 nmap -p- -sSV -sUV -O -vvv -A
```

```
nmap -vvv -O -Pn -sV -sS -T4 -A -sC --dns-servers 1.1.1.1 ,1.0.0.1 ,9.9.9.9 ,149.112.112.112 ,8.8.8.8 ,8.8.4.4 -oA scanme --stylesheet https://raw.githubusercontent.com/honze-net/nmap-bootstrap-xsl/master/nmap-bootstrap.xsl 
```

```bash
namap -vvv -sSV -sUV -O -p- --script all
```

---
# Scripts 

```
afp-path-vuln,\
broadcast-avahi-dos,\
clamav-exec,\
distcc-cve2004-2687,\
dns-update,\
firewall-bypass,\
ftp-libopie,\
ftp-proftpd-backdoor,\
ftp-vsftpd-backdoor,\
ftp-vuln-cve2010-4221,\
http-adobe-coldfusion-apsa1301,\
http-aspnet-debug,\
http-avaya-ipoffice-users,\
http-awstatstotals-exec,\
http-axis2-dir-traversal,\
http-cookie-flags,\
http-cross-domain-policy,\
http-csrf,\
http-dlink-backdoor,\
http-dombased-xss,\
http-enum,\
http-fileupload-exploiter,\
http-frontpage-login,\
http-git,\
http-huawei-hg5xx-vuln,\
http-iis-webdav-vuln,\
http-internal-ip-disclosure,\
http-jsonp-detection,\
http-litespeed-sourcecode-download,\
http-majordomo2-dir-traversal,\
http-method-tamper,\
http-passwd,\
http-phpmyadmin-dir-traversal,\
http-phpself-xss,\
http-shellshock,\
http-slowloris-check,\
http-sql-injection,\
http-stored-xss,\
http-tplink-dir-traversal,\
http-trace,\
http-vmware-path-vuln,\
http-vuln-cve2006-3392,\
http-vuln-cve2009-3960,\
http-vuln-cve2010-0738,\
http-vuln-cve2010-2861,\
http-vuln-cve2011-3192,\
http-vuln-cve2011-3368,\
http-vuln-cve2012-1823,\
http-vuln-cve2013-0156,\
http-vuln-cve2013-6786,\
http-vuln-cve2013-7091,\
http-vuln-cve2014-2126,\
http-vuln-cve2014-2127,\
http-vuln-cve2014-2128,\
http-vuln-cve2014-2129,\
http-vuln-cve2014-3704,\
http-vuln-cve2014-8877,\
http-vuln-cve2015-1427,\
http-vuln-cve2015-1635,\
http-vuln-cve2017-1001000,\
http-vuln-cve2017-5638,\
http-vuln-cve2017-5689,\
http-vuln-cve2017-8917,\
http-vuln-misfortune-cookie,\
http-vuln-wnr1000-creds,\
http-wordpress-users,\
ipmi-cipher-zero,\
irc-botnet-channels,\
irc-unrealircd-backdoor,\
mysql-vuln-cve2012-2122,\
netbus-auth-bypass,\
puppet-naivesigning,\
qconn-exec,\
rdp-vuln-ms12-020,\
realvnc-auth-bypass,\
rmi-vuln-classloader,\
rsa-vuln-roca,\
samba-vuln-cve-2012-1182,\
smb-double-pulsar-backdoor,\
smb-vuln-conficker,\
smb-vuln-cve-2017-7494,\
smb-vuln-cve2009-3103,\
smb-vuln-ms06-025,\
smb-vuln-ms07-029,\
smb-vuln-ms08-067,\
smb-vuln-ms10-054,\
smb-vuln-ms10-061,\
smb-vuln-ms17-010,\
smb-vuln-regsvc-dos,\
smb-vuln-webexec,\
smb2-vuln-uptime,\
smtp-vuln-cve2010-4344,\
smtp-vuln-cve2011-1720,\
smtp-vuln-cve2011-1764,\
ssl-ccs-injection,\
ssl-cert-intaddr,\
ssl-dh-params,\
ssl-heartbleed,\
ssl-known-key,\
ssl-poodle,\
sslv2-drown,\
supermicro-ipmi-conf,\
tls-ticketbleed,\
vulners,\
wdb-version,\
```
