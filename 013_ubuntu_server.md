```
ssh -p 722 io@176.37.60.108
```

### dotnet SDK 
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
### mc, git, make, htop, iftop

```
sudo apt-get install -y mc git make htop iftop
```

```
sudo apt install -y python3-pip
```
### node php composer
```
```
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
```
```
sudo apt-get install -y php php-cli php-mbstring php-xml
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
```
```
```
```
```
```