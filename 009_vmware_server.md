## VMWare debian linux виртуальная машина
#### Настройки /etc/network/interfaces
```
auto ens33
iface ens33 inet static
address 192.168.0.134
netmask 255.255.255.0
gateway 192.168.0.1
dns-nameservers 8.8.8.8 8.8.4.4
```

#### Настройки /etc/resolv.conf
```
nameserver 8.8.8.8
```
> Настройки сети для машины Bridge
> Bridge виртуальных сетей VMWare НЕ автоматический а ethernet