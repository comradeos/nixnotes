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