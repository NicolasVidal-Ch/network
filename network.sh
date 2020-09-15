#Install Network-Manager:
apt -y install network-manager

#Configuration "NetworkManager.conf":
echo "\n" >> /etc/NetworkManager/NetworkManager.conf
echo [device] >> /etc/NetworkManager/NetworkManager.conf
echo "\n" >> /etc/NetworkManager/NetworkManager.conf
echo wifi.scan-rand-mac-address=no >> /etc/NetworkManager/NetworkManager.conf

#Reboot the Pi:
reboot
