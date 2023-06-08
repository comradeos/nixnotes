## Install & Configure

```
sudo apt-get install nginx
```
```
sudo vim /etc/nginx/sites-available/default
```
```
server {
    listen 80;

    server_name chris.paypal.com;

    location / {
        proxy_pass http://127.0.0.1:8000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
```

## Is it possible to make Nginx listen to different ports?
```
server {
    listen       80;
    server_name  example.org  www.example.org;
    root         /var/www/port80/
}

server {
    listen       81;
    server_name  example.org  www.example.org;
    root         /var/www/port81/
}
```

## Raspberry Servers Example
```
server
{
        listen 80 default_server;
        listen [::]:80 default_server;
        root /var/www/html;
        index index.html index.htm index.nginx-debian.html;
        server_name _;
        location /
        {
                try_files $uri $uri/ =404;
        }
}

server
{
        listen 81;
        root /apps/app1;
}

server
{
        listen 82;
        location /
        {
                proxy_pass http://127.0.0.1:8000;
        }
}
```


## Run django project example 
```
sudo su

sudo python3 -m venv env

source ./env/bin/activate

deactivate

pip uninstall django

pip install django

django-admin startproject example

python3 manage.py runserver
```