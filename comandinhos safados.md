# NMAP

```
nmap -vvv -O -Pn -sV -sS -T4 -A -sC -oA scanme --stylesheet https://raw.githubusercontent.com/honze-net/nmap-bootstrap-xsl/master/nmap -bootstrap.xsl scanme.nmap.org scanme2.nmap.org
```

# FFUF

```
ffuf -u "https://exemple.com/FUZZ" -w /home/wordlists/SecLists/Discovery/Web-Content/common.txt -http2 -recursion -recursion-depth 1 -fc 404 -fs 5481 -fw 1,627
```