#!/bin/bash -e
TARGET_ROOTFS_DIR="binary"

echo "in mk-adv.sh"

#---------------Overlay--------------
echo "1.copy overlay"
sudo cp -rf overlay-adv/* $TARGET_ROOTFS_DIR/

sudo cp -rf adv-build/* $TARGET_ROOTFS_DIR/tmp/

echo "2.install/remove/adjust debian"

cat <<EOF | sudo chroot $TARGET_ROOTFS_DIR

#---------------Remove--------------
apt-get --purge remove -y firefox

#---------------Install--------------
apt-get update
apt-get install -y mtd-utils
apt-get install -y i2c-tools
#for rpmb
apt-get install -y mmc-utils
#for 4G
apt-get install -y libpcap0.8:armhf ppp
apt-get install -y usb-modeswitch mobile-broadband-provider-info modemmanager
#for browser
apt install -y -t sid firefox
#for bt udev
apt-get install -y at
#for sync time
apt-get install -y cron
/tmp/timesync.sh
rm /tmp/timesync.sh

apt-get update
apt-get install -y blueman
#---------------Adjust--------------
#for usb otg
update-rc.d S50usbdevice defaults

#for login
sed -ri 's/^(autologin-user=.*)/# \1/'  /etc/lightdm/lightdm.conf
sed  -i 's/--autologin root//'  /lib/systemd/system/serial-getty@.service
echo "linaro:123456" | chpasswd
echo "root:123456" | chpasswd

#adduser
#adduser --gecos adv --disabled-login adv
#echo "adv:adv" | chpasswd


#locale
#sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
#locale-gen

#timezone
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#---------------Clean--------------
rm -rf /var/lib/apt/lists/*

EOF

