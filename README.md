Debris
======

Debian config tools and tips.


Window Manager
---

`apt-get install i3`

Nvidia
---

https://wiki.debian.org/NvidiaGraphicsDrivers#Debian_7_.22Wheezy.22

`apt-get install lightdm`

Sources.list :

`deb http://http.debian.net/debian/ wheezy main contrib non-free`

`apt-get install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') nvidia-kernel-dkms`

Authorize X to listen on tcp
---

Install personal settings
---

Use AUFS to keep these in a repo ?

* .vimrc
* .profile
* .bash_aliases
