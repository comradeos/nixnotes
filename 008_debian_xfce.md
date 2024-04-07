sudo apt install mc vim nano cowsay snapd gcc g++ clang htop iftop wget curl git nginx net-tools default-jdk default-jre screen sudo -y


https://go.dev/doc/install
sudo mv ~/Downloads/go1.22.1.linux-amd64/go go
export PATH=$PATH:/usr/local/go/bin



добавить в PATH папку с приложениями snap
```
export PATH=$PATH:/snap/bin
```

source ~/.bashrc
source ~/.bash_profile
добавить ярлык в панель
```
ln -s /var/lib/snapd/desktop/applications/ ~/.local/share/applications/snap
```


название тремы
```
victory-gtk-theme-2021-12.zip
```

Установка программ lightdm gtk+ (login screen)
```
sudo apt-get install lightdm-gtk-greeter-settings
```


мониторинг трафика
```
sudo add-apt-repository universe
sudo apt update
sudo apt install iftop
```
```
sudo apt install iftop
```
```
sudo iftop -i eth0 -B
```

```
echo "snap" >> ~/.hidden
```
```
cat ~/.hidden
```

установка dotnet
```
wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt update
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y dotnet-sdk-6.0

dotnet --version
```



LightDM Gtk+ Greeter

sudo apt-get install lightdm-gtk-greeter
sudo apt-get install lightdm-gtk-greeter-settings
sudo apt-get install net-tools

sudo nano /etc/network/interfaces

------------------------------------------------------------------------

This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
auto ens33
iface ens33 inet static
    address 192.168.0.108
    netmask 255.255.255.0
    gateway 192.168.0.1
    dns-nameservers 8.8.8.8 8.8.4.4

------------------------------------------------------------------------

sudo nano /etc/resolv.conf

nameserver 8.8.8.8
nameserver 8.8.4.4

------------------------------------------------------------------------

sudo ifdown ens33 && sudo ifup ens33

или 

sudo ifdown ens33 --force
sudo ifup ens33




шрифты тут - /usr/share/fonts/




sudo apt update
sudo apt install php


sudo apt update
sudo apt install php-fpm


debian посмотреть список запущеных сервисов

systemctl --type=service --state=running


https://docs.docker.com/engine/install/debian/

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world

cd ~/.ssh
git config --global user.name "Iaroslav Os"
git config --global user.email "osmnbx@gmail.com"
ssh-keygen -t rsa -b 4096 -C "osmnbx@gmail.com"
cat ~/.ssh/id_rsa.pub
ssh -T git@github.com