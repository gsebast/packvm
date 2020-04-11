#!/bin/sh -eux

packvm='
This system is built by the Packvm project by gsebast
More information can be found at https://github.com/gsebast/packvm
It is based on the Bento project by Chef Software
More information can be found at https://github.com/chef/bento'

if [ -d /etc/update-motd.d ]; then
    MOTD_CONFIG='/etc/update-motd.d/99-packvm'

    cat >> "$MOTD_CONFIG" <<PACKVM
#!/bin/sh

cat <<'EOF'
$packvm
EOF
PACKVM

    chmod 0755 "$MOTD_CONFIG"
else
    echo "$packvm" >> /etc/motd
fi
