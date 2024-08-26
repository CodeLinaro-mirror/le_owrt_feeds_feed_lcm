#!/bin/sh

sed -i 's|\blxc.lxcpath[[:space:]]*=[[:space:]]*/srv/lxc\b|lxc.lxcpath = /etc/config/lxc|' /etc/lxc/lxc.conf
egrep "\blxc.lxcpath[[:space:]]*=[[:space:]]*/etc/config/lxc\b" /etc/lxc/lxc.conf &&  mkdir -p /etc/config/lxc

exit 0
