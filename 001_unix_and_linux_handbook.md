<!-- VM -->
# ssh comradeos@192.168.121.134
<!-- ssh -i C:\Users\comradeos\.ssh\vm_ubuntu_server comradeos@192.168.121.134 -->

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
```
comradeos@host:~/temp$ name="Iaroslav Os"
comradeos@host:~/temp$ echo 'My name is ${name}'
My name is ${name}
comradeos@host:~/temp$ echo "My name is ${name}"
My name is Iaroslav Os
comradeos@host:~/temp$
```

## подсчет строк, слов и символов
<!-- word count -->
wc /etc/passwd  

## просмотр файла с ожидаем
tail -f my_file.txt  


## bash скрипты
comradeos@host:~/temp$ vim helloworld.sh  
```
#!/bin/bash
echo "hello world"
```
comradeos@host:~/temp$ chmod +x helloworld.sh  
comradeos@host:~/temp$ ./helloworld.sh  
hello world  

## запустить оболочку в качестве ин­терпретатора сценария
```
$ bash helloworld  
Hello, world!  
$ source helloworld  
Hello, world!  
```

<!-- найти в текущей папке все файлы закончивающиеся на ".log" -->
comradeos@host:~/temp$ find . -name "*.log"    

## Ввод в консоли
```
comradeos@host:~/temp$ echo -n "You name? " && read username && echo "Hello, ${username}!"  
You name? Iaroslav Os  
Hello, Iaroslav Os!  
```


comradeos@host:~/temp$ vim read_example.sh  
```
#!/bin/bash

echo -n "Enter your name: "
read user_name

if [ -n "${user_name}" ];
then
        echo "Hello ${user_name}!"
        exit 0
else
        echo "You didn't provide your name! "
        exit 1
fi
```

comradeos@host:~/temp$ chmod +x ./read_example.sh  

```
comradeos@host:~/temp$ ./read_example.sh
Enter your name:
You didn't provide your name!
```

```
comradeos@host:~/temp$ ./read_example.sh
Enter your name: Iaroslav
Hello Iaroslav!
comradeos@host:~/temp$
```

## Функции и аргументы командной строки

$1 — первый аргумент командной строки,   
$2 — второй и т.д.   
Аргумент $0 содер­жит имя, по которому был вызван сценарий  


comradeos@host:~/temp$ vim args_test.sh  
```
#!/bin/bash
echo "arguments: ${0}, ${1}, ${2}"
```
chmod +rwx args_test.sh  
comradeos@host:~/temp$ ./args_test.sh arg_A arg_B  
arguments: ./args_test.sh, arg_A, arg_B  


## Операции сравнения

сравнение целых чисел  
-eq равно  
if [ "$a" -eq "$b" ]  
___
-ne  
не равно  
if [ "$a" -ne "$b" ]  
___
-gt больше  
if [ "$a" -gt "$b" ]  
___
-ge больше или равно
if [ "$a" -ge "$b" ]   
___
-lt меньше  
if [ "$a" -lt "$b" ]  
___
-le меньше или равно  
if [ "$a" -le "$b" ]  
___

## сравнение строк

= равно  
if [ "$a" = "$b" ]
___
== равно  
if [ "$a" == "$b" ]  
___
## Синоним оператора =.  
[[ $a == z* ]]    # истина, если $a начинается с символа "z" (сравнение по шаблону)  
[[ $a == "z*" ]]  # истина, если $a равна z*  
[ $a == z* ]      # имеют место подстановка имен файлов и разбиение на слова  
[ "$a" == "z*" ]  # истина, если $a равна z*  

!= не равно  
if [ "$a" != "$b" ]
___
-z строка "пустая", т.е. имеет нулевую длину  
-n строка не "пустая".  
Оператор -n требует, чтобы строка была заключена в кавычки внутри квадратных скобок. Как правило, проверка строк, не заключенных в кавычки, оператором ! -z, или просто указание строки без кавычек внутри квадратных скобок, проходит нормально, однако это небезопасная, с точки зрения отказоустойчивости, практика. Всегда заключайте проверяемую строку в кавычки.
___

$? содержит статус завершения последней выполненной команды  

вы можете определить в своем файле ~/.bash_profile функцию ssh, чтобы быть уверен­ным в том, 
что она всегда будет запускаться (как команда) с ключом -р 7988.  
function ssh {  
        /usr/bin/ssh -р 7988 $*  
}  
___
Строки   
Числа  
Истина, если   
___
x = у  
х -eq у  
х равно у  
___

х != у  
х -ne у  
х не равно у  
___

х < у  
х -lt у  
х меньше у  
___
х <= у  
х -lе у  
х меньше или равно у  
___

x > у  
х -gt у  
х больше у  
___
x >= у  
х -ge у  
х больше или равно у  
___
-n x  
-  
х не равно значению null  
___
-z x  
-  
х равно значению null
___

-d файл  
Файл файл существует и является каталогом  
___
-е файл  
Файл файл существует  
___
-f файл  
Файл файл существует и является обычным  
___
-r файл  
У вас есть право доступа для чтения файла  
___
-s файл  
Файл файл существует и он — не пустой   
___
-w файл  
У вас есть право доступа для записи в файл  
___
файл1 -nt файл2  
Файл файл1 новее, чем файл2  
___
файл1 -ot файл2  
Файл файл1 старше, чем файл2  
___

## Циклы

comradeos@host:~/temp$ vim test_loop.sh  
```
#!/bin/bash

for script in *.sh;
do
        newname="${script}_copy"
        echo "Copying ${script} to ${newname}..."
done

```
comradeos@host:~/temp$ bash ./test_loop.sh  
Copying args_test.sh to args_test.sh_copy...  
Copying helloworld.sh to helloworld.sh_copy...  
Copying read_example.sh to read_example.sh_copy...  
Copying test_loop.sh to test_loop.sh_copy...  
comradeos@host:~/temp$  

## Массивы и арифметика

#!/bin/bash
а=1
b=$((2))
с=$а+$b
d=$(($a+$b))
echo "$а + $b = $с \t(знак плюс как строковый литерал)"
echo "$а + $b = $d \t(знак плюс как арифметическое сложение)"
При выполнении этого сценария получим такой результат.
1 + 2 = 1+2 (знак плюс как строковый литерал)
1 + 2 = 3 (знак плюс как арифметическое сложение)

## Массивы
comradeos@host:~$ my_arr=(hello world ! 'Iaroslav Os')  
comradeos@host:~$ echo ${my_arr[0]}  
hello  

comradeos@host:~$ arr=(1 2 3 'hello')  
comradeos@host:~$ echo ${arr[3]}  
hello  
comradeos@host:~$  

comradeos@host:~$ echo ${arr[@]}  
1 2 3 hello  
<!-- вывести количество элементов -->
comradeos@host:~$ echo ${#arr[@]}  
4  

  a=(a b c d e f)  
  for i in ${a[@]};  
  do  
          echo "$i"  
  done  

  ## Регулярные выражения
<!-- Символ / С чем совпадает или что делает -->
```
• Совпадает с любым символом
[chars] Совпадает с любым символом из заданного набора
[^chars] Совпадает с любым символом не из заданного набора
^ Совпадает с началом строки
$ Совпадает с концом строки
\w Совпадает с любым алфавитно-цифровым символом (аналогично набору [A-Za-z0-9_])
\s Совпадает с любым пробельным символом (аналогично набору [ \f\t\n\r])
\d Совпадает с любой цифрой (аналогично набору [0-9]) 
| Совпадает с элементом либо слева, либо справа  
(expr) Ограничивает область действия, группирует элементы, позволяя формировать группы совпадений с “захватом” и без “захвата” 
? Позволяет одно повторение (или ни одного) предшествующего элемента
* Позволяет множество повторений (или ни одного) предшествующего элемента
+ Позволяет одно или больше повторений предшествующего элемента
{n} Ровно n повторений предшествующего элемента
{min, } Не менее min повторений (обратите внимание на запятую)
{min,max} Любое число (от min до max) повторений
```

## Perl

comradeos@host:~/temp$ vim helloperl.pl   
#!/usr/bin/perl  
print "hello from Perl!\n";  

comradeos@host:~/temp$ chmod +x helloperl.pl  
comradeos@host:~/temp$ ./helloperl.pl  
hello from Perl!  

## Процессы

Присмотр процессов:   
ps  

<!-- master boot record — MBR -->
<!-- GRUB (GRand Unified Boot loader) -->
<!-- параметры загрузки из файла /boot/grub/menu.lst или /boot/grub/grub.conf -->

<!-- -h показывать плвавающий размер файлов b/Kb/Mb/Gb ... -->
 ls -la -h  

# USB монтированик
после подключения usb выполнить sudo dmesg  
или  
lsblk - list block devices   

sudo mkdir /mnt/USB  
sudo mount /dev/sdb1 /mnt/USB/  
sudo umount /mnt/USB  
 
