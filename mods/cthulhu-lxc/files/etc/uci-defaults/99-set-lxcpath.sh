#!/bin/sh

sed -i 's|\blxc.lxcpath[[:space:]]*=[[:space:]]*/srv/lxc\b|lxc.lxcpath = /etc/config/lxc|' "$IPKG_INSTROOT/etc/lxc/lxc.conf"
egrep "\blxc.lxcpath[[:space:]]*=[[:space:]]*/etc/config/lxc\b" "$IPKG_INSTROOT/etc/lxc/lxc.conf" &&  mkdir -p "$IPKG_INSTROOT/etc/config/lxc"

if [ -n "$IPKG_INSTROOT" ]; then
        source "$IPKG_INSTROOT/lib/functions/make_writable.sh"

        cd "$IPKG_INSTROOT" || exit 1

        make_file_writable etc/subgid tmp
        make_file_writable etc/subuid tmp
fi

exit 0
