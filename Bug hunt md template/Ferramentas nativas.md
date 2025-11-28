```bash 
smbclient -L \\1.1.1.1\\administrator\\ -p 139 -N -m NT1 --option='client max protocol=NT1' --option='client min protocol=CORE' --option='client ntlmv2 auth=no' --option='client lanman auth=yes' --option='client plaintext auth=yes' --option='client use spnego=no' --option='client signing=disabled' --client-protection=off -m NT1 -N
```

---
## Curl - GET HEAD POST OPTIONS PUT DELETE

```bash
curl -L https://exemplo.com/pagina-antiga -v 
```

```bash
curl -I https://exemplo.com/pagina-antiga -v 
```

```bash
curl -X GET https://exemplo.com/pagina-antiga  
```

```bash
curl -H "User-Agent:exemple\r\n Authorization: Bearer seu_token_aqui\r\n" https://api.exemplo.com/dados
```

```bash
curl -u usuario:senha https://api.exemplo.com/recurso-protegido
```

```bash
curl -F "arquivo=@caminho/para/meu_documento.pdf" https://api.exemplo.com/upload
```

```bash
curl -b "sessao=abc123xyz" https://exemplo.com/pagina-logada
```

```bash 
curl -c cookies.txt https://exemplo.com/login
```
