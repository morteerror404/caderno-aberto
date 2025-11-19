
```bash 
ffuf -u "https:/FUZZ" -w /home/wordlists/SecLists/Discovery/Web-Content/common.txt -http2 -recursion -recursion-depth 1 -fc 404 -fs 5481 -fw 1 -r 
```
