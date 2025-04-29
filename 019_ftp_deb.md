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