```
sudo apt update
sudo apt install vsftpd
```
```
sudo nano /etc/vsftpd.conf
```
```
local_enable=YES
write_enable=YES
chroot_local_user=YES
local_root=/home/io/Storage
pasv_enable=YES
pasv_min_port=40000
pasv_max_port=50000
```
```
sudo chown io:io /home/io/Storage
sudo chmod 755 /home/io/Storage
```
```
sudo ufw allow 21/tcp
sudo ufw allow 40000:50000/tcp
```
```
sudo systemctl restart vsftpd
```

FTP-клиент:
Host: 10.211.55.8
Username: io
Password: (пароль пользователя io)
Port: 21
/home/io/Storage.




sudo usermod -d /_reps/ElvatechUpdater/Files elvax











sudo useradd -M io
sudo passwd io
getent passwd io


если нет ufw 
sudo iptables -A INPUT -p tcp --dport 21 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 40000:50000 -j ACCEPT






sudo useradd -M elvax
sudo passwd elvax
getent passwd elvax

sudo iptables -A INPUT -p tcp --dport 21 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 40000:50000 -j ACCEPT













sudo apt update
sudo apt install vsftpd -y

sudo nano /etc/vsftpd.conf

local_enable=YES
write_enable=YES
chroot_local_user=YES
local_root=/home/io/apps/ElvatechUpdater/Files --- путь к папке
pasv_enable=YES
pasv_min_port=40000
pasv_max_port=50000
allow_writeable_chroot=YES



sudo apt update
sudo apt install iptables -y

sudo iptables -A INPUT -p tcp --dport 21 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 40000:50000 -j ACCEPT

sudo useradd -M elvax
sudo passwd elvax
getent passwd elvax

sudo chown -R elvax:elvax /home/io/apps/ElvatechUpdater/Files --- путь к папке
sudo chmod 755 -R /home/io/apps/ElvatechUpdater/Files --- путь к папке
 
sudo apt install ftp -y

sudo usermod -d /home/io/apps/ElvatechUpdater/Files elvax

sudo chmod 755 /home
sudo chmod 755 /home/io
sudo chmod 755 /home/io/apps
sudo chmod 755 /home/io/apps/ElvatechUpdater
sudo chmod 755 /home/io/apps/ElvatechUpdater/Files
sudo chown -R elvax:elvax /home/io/apps/ElvatechUpdater/Files





sudo nano /etc/vsftpd.conf

listen=YES
listen_port=21
pasv_address=176.37.60.108


sudo systemctl restart vsftpd