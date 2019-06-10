#!/bin/bash -e
TARGET_ROOTFS_DIR="binary"

echo "in mk-adv.sh"

#---------------Overlay--------------
echo "1.copy overlay"
sudo cp -rf overlay-adv/* $TARGET_ROOTFS_DIR/

if [ "$VERSION" != "debug" ] || [ "$VERSION" != "jenkins" ]; then
	echo -e "\033[36m Copy  overlay-debug \033[0m"
	# adb, video, camera  test file
	sudo cp -rf overlay-debug/* $TARGET_ROOTFS_DIR/
fi

sudo cp -rf adv-build/* $TARGET_ROOTFS_DIR/tmp/

echo "2.install/remove/adjust debian"

cat <<EOF | sudo chroot $TARGET_ROOTFS_DIR

#---------------Remove--------------
#apt-get --purge remove -y firefox

#---------------Install--------------
apt-get update
apt-get install -y gnome-screenshot
apt-get install -y mtd-utils
apt-get install -y i2c-tools
#for rpmb
apt-get install -y mmc-utils
#for 4G
apt-get install -y libpcap0.8:armhf ppp
apt-get install -y usb-modeswitch mobile-broadband-provider-info modemmanager
#for browser
# apt install -y -t sid firefox
#for bt udev
apt-get install -y at
#for sync time
apt-get install -y cron
/tmp/timesync.sh
rm /tmp/timesync.sh

#for Chinese fonts
apt-get install -y xfonts-intl-chinese xfonts-wqy ttf-wqy-microhei ttf-dejavu

#for blueman
# apt-get update
# apt-get install -y blueman

#for Modbus
apt-get install mosquitto mosquitto-dev libmosquitto-dev -y

#---------------Adjust--------------
#for usb otg
update-rc.d S50usbdevice defaults
update-rc.d advinit defaults

#for login
sed -ri 's/^(autologin-user=.*)/# \1/'  /etc/lightdm/lightdm.conf
sed  -i 's/--autologin root//'  /lib/systemd/system/serial-getty@.service
echo "linaro:123456" | chpasswd
echo "root:123456" | chpasswd

#adduser
#adduser --gecos adv --disabled-login adv
#echo "adv:adv" | chpasswd


#locale
sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
sed -i 's/# zh_CN GB2312/zh_CN GB2312/g' /etc/locale.gen
sed -i 's/# zh_CN.GB18030 GB18030/zh_CN.GB18030 GB18030/g' /etc/locale.gen
sed -i 's/# zh_CN.GBK GBK/zh_CN.GBK GBK/g' /etc/locale.gen
sed -i 's/# zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/g' /etc/locale.gen
sed -i 's/# zh_TW BIG5/zh_TW BIG5/g' /etc/locale.gen
sed -i 's/# zh_TW.EUC-TW EUC-TW/zh_TW.EUC-TW EUC-TW/g' /etc/locale.gen
sed -i 's/# zh_TW.UTF-8 UTF-8/zh_TW.UTF-8 UTF-8/g' /etc/locale.gen
locale-gen

#timezone
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#mount userdata to /userdata
rm /userdata /oem /misc -rf
mkdir /userdata
mkdir /oem
chmod 0777 /userdata
chmod 0777 /oem

ln -s /dev/disk/by-partlabel/misc /misc

#---------------Clean--------------
rm -rf /var/lib/apt/lists/*

EOF

