git config --global user.name "Iaroslav Os"
git config --global user.email "osmnbx@gmail.com"
mkdir ~/.ssh
ls ~/.ssh
ssh-keygen -t rsa -b 4096 -C "osmnbx@gmail.com"
cat ~/.ssh/id_rsa.pub