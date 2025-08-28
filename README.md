# NMAP 

```
https://nmap.org/nsedoc/scripts/
```

```
nmap -vvv -O -sV -sS -T4 -A -sC \
--script afp-path-vuln,\
broadcast-avahi-dos,\
clamav-exec,\
http-cross-domain-policy,\
http-cookie-flags,\
dns-update,\
ftp-libopie,\
http-adobe-coldfusion-apsa1301,\
http-aspnet-debug,\
http-avaya-ipoffice-users,\
http-dlink-backdoor,\
http-enum,\
http-stored-xss,\
ssl-ccs-injection \
-oA ./scanme \
--stylesheet https://raw.githubusercontent.com/honze-net/nmap-bootstrap-xsl/master/nmap-bootstrap.xsl \
scanme.nmap.org scanme2.nmap.org
```
```
nmap  -vvv -O -Pn -sV -sS -T4 -A -sC -oA scanme --stylesheet https://raw.githubusercontent.com/honze-net/nmap-bootstrap-xsl/master/nmap-bootstrap.xsl scanme.nmap.org scanme2.nmap.org
```

# FFUF

```
ffuf -u "https://exemple.com/FUZZ" -w /home/wordlists/SecLists/Discovery/Web-Content/common.txt -http2 -recursion -recursion-depth 1 -fc 404 -fs 5481 -fw 1,627
```
