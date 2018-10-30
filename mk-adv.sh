#!/bin/bash -e
TARGET_ROOTFS_DIR="binary"

echo "in mk-adv.sh"

#---------------Overlay--------------
echo "1.copy overlay"
sudo cp -rf overlay-adv/* $TARGET_ROOTFS_DIR/

echo "2.install/remove/adjust debian"

cat <<EOF | sudo chroot $TARGET_ROOTFS_DIR

#---------------Remove--------------
apt-get --purge remove -y chromium
apt-get --purge remove -y firefox

#---------------Install--------------
apt-get update
apt-get install -y mtd-utils
apt-get install -y i2c-tools
#for rpmb
apt-get install -y mmc-utils
#for 4G
apt-get install -y libpcap0.8:armhf ppp
ap-get install -y usb-modeswitch mobile-broadband-provider-info modemmanager
#for browser
#apt-get install -y chromium
apt install -t sid firefox
apt-get install -y chromium


#---------------Adjust--------------
#for usb otg
update-rc.d S50usbdevice defaults

#for login
#sed  -i 's/--autologin root//'  /lib/systemd/system/serial-getty@.service
#echo "linaro:123456" | chpasswd
#echo "root:123456" | chpasswd

#adduser
#adduser --gecos adv --disabled-login adv
#echo "adv:adv" | chpasswd


#locale
#sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
#locale-gen

#timezone
#timedatectl set-timezone Asia/Shanghai

#---------------Clean--------------
rm -rf /var/lib/apt/lists/*

EOF

