https://www.jenkins.io/doc/book/installing/linux/#debianubuntu


sudo visudo
jenkins ALL=(ALL) NOPASSWD: ALL


sudo usermod -aG docker jenkins
sudo systemctl restart jenkins

### Plugins 
SSH Slaves
SSH Agent


Jenkins: 
Для мастера (в машине добавить в sudoers):
sudo visudo
jenkins ALL=(ALL) NOPASSWD: ALL

Для мастера (в машине добавить в sudoers):
jenkins ALL=(ALL) NOPASSWD: ALL
[имя пользователя] ALL=(ALL) NOPASSWD: ALL 
admin_node_1 ALL=(ALL) NOPASSWD: ALL 
