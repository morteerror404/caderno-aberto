## fuff

```bash 
ffuf -u "https:/FUZZ" -w /home/wordlists/SecLists/Discovery/Web-Content/common.txt -http2 -recursion -recursion-depth 1 -fc 404 -fs 5481 -fw 1 -r 
```

## Ferox

```bash 
feroxbuster -u https://exemple.com/ -w /home/wordlists/SecLists/Discovery/Web-Content/big.txt --filter-status 403,404 -r --collect-extensions --auto-bail --user-agent "torradeira-9000" >>
```
