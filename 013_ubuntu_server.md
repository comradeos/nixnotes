```
ssh -p 13822 io@176.37.60.108
```
```
ssh io@192.168.0.138
```

### Static IP
```
sudo nano /etc/netplan/[file]
```
```
network:
  version: 2
  ethernets:
    ens33:
      dhcp4: no
      addresses:
        - 192.168.0.138/24
      routes:
        - to: default
          via: 192.168.0.1
      nameservers:
        addresses:
          - 8.8.8.8
          - 8.8.4.4
```
```
sudo netplan apply
```

<!-- Filesystem      Size  Used Avail Use% Mounted on -->
<!-- /dev/sda3        94G  2.1G   88G   3% / -->

### Dotnet SDK 
```
wget https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
```
```
sudo apt-get update
```
```
sudo apt-get install -y dotnet-sdk-8.0
```
```
dotnet --version
```
<!-- Filesystem      Size  Used Avail Use% Mounted on -->
<!-- /dev/sda3        94G  2.7G   87G   3% / -->

### Java SDK 
```
sudo apt-get update
```
```
sudo apt-get install -y openjdk-17-jdk
```
```
java -version
```
```
javac -version
```
### GCC/G++ Clang/Clang++ SDK 
```
sudo apt-get update
```
```
sudo apt-get install -y build-essential
```
```
sudo apt-get install -y clang
```
```
gcc --version
```
```
g++ --version
```
```
clang --version
```
```
clang++ --version
```
### Golang SDK 
```
sudo apt-get update
```
```
sudo apt-get install -y golang
```
```
go version
```
### Docker + Docker Compose
```
sudo apt-get remove docker docker-engine docker.io containerd runc
```
```
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
```
```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```
```
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
```
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
```
```
sudo systemctl status docker
```
```
sudo systemctl status docker
```
```
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```
```
docker-compose --version
```
```
sudo usermod -aG docker $USER
```
```
reboot/logout/login
```
```
sudo systemctl enable docker
```
### MC, Git, Make, Htop, Iftop

```
sudo apt-get install -y mc git make htop iftop
```

```
sudo apt install -y python3-pip
```
### Node Php Composer
```
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
```
```
sudo apt-get install -y php php-cli php-mbstring php-xml
```
```
sudo apt update
```
```
sudo apt install php-cli unzip
```
```
cd ~
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
```
```
HASH=`curl -sS https://composer.github.io/installer.sig`
```
```
echo $HASH
```
```
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
```
```
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
```
```
composer
```

<!-- Filesystem      Size  Used Avail Use% Mounted on -->
<!-- /dev/sda3        94G  5.5G   84G   7% / -->

### Xfce Desktop Environments
```
sudo apt-get update
sudo apt-get install -y sudo chown -R $USER:$USER /home/$USER
```
```
sudo apt-get install -y lightdm
sudo dpkg-reconfigure lightdm
```
```
sudo chown -R $USER:$USER /home/$USER
```
```
sudo nano /etc/lightdm/lightdm.conf
```
```
[Seat:*]
user-session=xfce
```
```
sudo apt-get install -y xfce4 xfce4-goodies
```
```
sudo reboot
```
### Вход без пароля
```
sudo nano /etc/lightdm/lightdm.conf
```
```
sudo reboot
```
```
```
```
```
```