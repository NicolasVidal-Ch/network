#New IP:
IPWLAN=$(ip route | grep 'wlan1' | cut -d ' ' -f9)

echo RPI.$IPWLAN > /etc/hostname

echo 127.0.0.1       localhost > /etc/hosts
echo 127.0.1.1       RPI.$IPWLAN >> /etc/hosts

#Send IP address on ipraspberry file:
sed -i -e "s/$IPWLAN/g" /mnt/servrpi/export/exportrpi/hosts
echo RPI.$IPWLAN >> /mnt/servrpi/export/exportrpi/hostname

#Configuration "NetworkManager.conf":
echo "\n" >> /etc/NetworkManager/NetworkManager.conf
echo [device] >> /etc/NetworkManager/NetworkManager.conf
echo "\n" >> /etc/NetworkManager/NetworkManager.conf
echo wifi.scan-rand-mac-address=no >> /etc/NetworkManager/NetworkManager.conf

#Kill cron:
sed -i '/network-net/d' /etc/crontab
#mount
@reboot root mount -a >> /etc/crontab

#Reboot the Pi:
reboot
