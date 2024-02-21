
``` sh
man sddm.conf
```

``` sh
update-alternatives --get-selections | grep sddm
```

```
sddm-ubuntu-theme              auto     /usr/share/sddm/themes/lubuntu
```

``` sh
ls -al /usr/share/sddm/themes/
```

```
total 12
drwxr-xr-x 3 root root 4096 Jan 23 00:44 .
drwxr-xr-x 7 root root 4096 Jan 23 00:43 ..
drwxr-xr-x 2 root root 4096 Jan 23 00:43 lubuntu
lrwxrwxrwx 1 root root   35 Jan 23 00:43 ubuntu-theme -> /etc/alternatives/sddm-ubuntu-theme
```

``` sh
update-alternatives --query sddm-ubuntu-theme
```

``` sh
update-alternatives --display sddm-ubuntu-theme
```

``` sh
update-alternatives --list sddm-ubuntu-theme
```

``` sh
update-alternatives --config sddm-ubuntu-theme
