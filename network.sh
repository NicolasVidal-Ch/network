#Configuration "NetworkManager.conf":
echo "\n" >> /etc/NetworkManager/NetworkManager.conf
echo [device] >> /etc/NetworkManager/NetworkManager.conf
echo "\n" >> /etc/NetworkManager/NetworkManager.conf
echo wifi.scan-rand-mac-address=no >> /etc/NetworkManager/NetworkManager.conf

#Kill cron:
sed -i '/network-net/d' /etc/crontab

#Reboot the Pi:
reboot
