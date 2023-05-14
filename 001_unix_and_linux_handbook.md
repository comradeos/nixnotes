## UNIX and Linux System Administration Handbook
### By Evi Nemeth, Garth Snyder, Trent R. Hein, Ben Whaley, Dan Mackin  
---
## Установка переменной среды
```
comradeos@host:~$ export MY_NAME="Iaroslav Os (env)"  
comradeos@host:~$ echo $MY_NAME  
Iaroslav Os (env)  
```

## Добавить в профиль
```
comradeos@host:~$ vim .profile
добавить в конец файла export MY_NAME="Iaroslav Os (env)"
сохранить
```

## Добавить папку /home/comradeos/temp в переменные среды
<!-- в папке temp есть бинарь который выводит Hello From Application! -->
```
comradeos@host:~$ export PATH="${HOME}/temp:${PATH}"
comradeos@host:~$ app
Hello From Application!
comradeos@host:~$
```

## Определение факта инсталляции программного обеспечения
```
which gcc
whereis gcc
```

## Nginx настройки для Django
```
cat /etc/nginx/sites-available/default

##
# You should look at the following URL's in order to grasp a solid understanding
# of Nginx configuration files in order to fully unleash the power of Nginx.
# https://www.nginx.com/resources/wiki/start/
# https://www.nginx.com/resources/wiki/start/topics/tutorials/config_pitfalls/
# https://wiki.debian.org/Nginx/DirectoryStructure
#
# In most cases, administrators will remove this file from sites-enabled/ and
# leave it as reference inside of sites-available where it will continue to be
# updated by the nginx packaging team.
#
# This file will automatically load configuration files provided by other
# applications, such as Drupal or Wordpress. These applications will be made
# available underneath a path with that package name, such as /drupal8.
#
# Please see /usr/share/doc/nginx-doc/examples/ for more detailed examples.
##

# Default server configuration
#
server {
        listen 80 default_server;
                location / {
                        proxy_pass http://127.0.0.1:8000;
                        proxy_http_version 1.1;
                }

        # pass PHP scripts to FastCGI server
        #
        #location ~ \.php$ {
        #       include snippets/fastcgi-php.conf;
        #
        #       # With php-fpm (or other unix sockets):
        #       fastcgi_pass unix:/run/php/php7.4-fpm.sock;
        #       # With php-cgi (or other tcp sockets):
        #       fastcgi_pass 127.0.0.1:9000;
        #}

        # deny access to .htaccess files, if Apache's document root
        # concurs with nginx's one
        #
        #location ~ /\.ht {
        #       deny all;
        #}
}


# Virtual Host configuration for example.com
#
# You can move that to a different file under sites-available/ and symlink that
# to sites-enabled/ to enable it.
#
#server {
#       listen 80;
#       listen [::]:80;
#
#       server_name example.com;
#
#       root /var/www/example.com;
#       index index.html;
#
#       location / {
#               try_files $uri $uri/ =404;
#       }
#}
```

<!-- TTY, Teleprinter/Teletype/Teletypewriter  -->

## Перенаправление потока ввода/вывода
<!-- напечатать слово hello в файл  file.txt -->
comradeos@host:~/temp$ echo "hello" > file.txt
<!-- посмотреть содержимое файла  -->
comradeos@host:~/temp$ cat ./file.txt  
hello  

<!-- дописать в файл слово world -->
comradeos@host:~/temp$ echo "world" >> file.txt  
comradeos@host:~/temp$ cat ./file.txt  
hello  
world  

<!-- прочитать содержимое файла перенаправлением потока ввода -->
comradeos@host:~/temp$ echo $(< file.txt)  
hello world  

<!-- установить утилиты для почты -->
sudo apt install mailutils  

## Отправить письмо
```
comradeos@host:~/temp$ mail -s "another sub"
To: osmnbx@gmail.com
Cc:
Hello world!
```

<!-- Ctrl+D прекратить ввод -->

## Переменные
```
comradeos@host:~/temp$ num=7
comradeos@host:~/temp$ echo "This is ${num}th deadly sin!"
This is 7th deadly sin!
comradeos@host:~/temp$
```