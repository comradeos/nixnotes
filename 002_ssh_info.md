установка ssh:  
sudo apt install openssh-server  

на машине с которой будем подключаться создаем пару ключей в   
директории пользователя в папке .ssh  

ssh-keygen  
пароль и имя для ключей по желанию  

копируем содержимое ключа .pub на удаленную машину   
в папку пользователя / .ssh/authorized_keys  

меняем доступы на чтение запись для владельца  

sudo chmod u=rw,g=,o= authorized_keys  
или  
sudo chmod 0600 authorized_keys  

с основной машины вход с паролем:  
ssh username@ip_adress  
ssh comradeos@10.211.55.4  

вход с ключом:  
ssh -i private_key_name username@ip_adress  
ssh -i winkey comradeos@10.211.55.4  

разрешить руту  
vim /etc/ssh/sshd_config  

изменить с:  
PermitRootLogin without-password  
на:  
PermitRootLogin yes  

рестарт демона ssh  
/etc/init.d/ssh restart  

https://linuxconfig.org/enable-ssh-root-login-on-debian-linux-server  