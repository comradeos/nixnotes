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