#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
if [ -f "/etc/v2ray/domain" ]; then
echo "Script Already Installed"
exit 0
fi


mkdir /etc/v2ray
mkdir /etc/xray
mkdir /var/lib/premium-script;
mkdir /var/lib/crot-script;
clear

read -p "Hostname / Domain: " host
echo "IP=$host" >> /var/lib/premium-script/ipvps.conf
echo  "$host" >> /root/domain
echo  "$host" >> /etc/v2ray/domain
clear

wget https://raw.githubusercontent.com/vpnerror404/FREEJER/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
wget https://raw.githubusercontent.com/vpnerror404/FREEJER/main/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
wget https://raw.githubusercontent.com/vpnerror404/FREEJER/main/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget https://raw.githubusercontent.com/vpnerror404/FREEJER/main/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh
wget https://raw.githubusercontent.com/vpnerror404/FREEJER/main/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
wget https://raw.githubusercontent.com/vpnerror404/FREEJER/main/ins-vt.sh && chmod +x ins-vt.sh && screen -S v2ray ./ins-vt.sh
wget https://raw.githubusercontent.com/vpnerror404/FREEJER/main/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
wget https://raw.githubusercontent.com/vpnerror404/FREEJER/main/install-xray.sh && chmod +x install-xray.sh && screen -S xray ./install-xray.sh
wget https://raw.githubusercontent.com/vpnerror404/FREEJER/main/websocket/websocket.sh && chmod +x websocket.sh && ./websocket.sh
wget https://raw.githubusercontent.com/vpnerror404/FREEJER/main/ohp/ohp.sh && chmod +x ohp.sh && ./ohp.sh
wget https://raw.githubusercontent.com/vpnerror404/FREEJER/main/set-br.sh && chmod +x set-br.sh && ./set-br.sh


rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-vt.sh
rm -f /root/install-xray.sh
rm -f /root/ipsec.sh
rm -f /root/websocket.sh
rm -f /root/ohp.sh
rm -f /root/set-br.sh
rm -f /root/nf
echo "1.1" > /home/ver

clear
echo " "
echo "=================================-Autoscript Premium-===========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "--------------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 442"  | tee -a log-install.txt
echo "   - Stunnel4                : 1443, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt
echo "   - WebSocket Dropbear      : 8880" | tee -a log-install.txt
echo "   - WebSocket OpenSSH       : 2095" | tee -a log-install.txt
echo "   - WebSocket OpenVPN       : 2082" | tee -a log-install.txt
echo "   - WebSocket TLS           : 2088" | tee -a log-install.txt
echo "   - OpenVPN OHP             : 8181"  | tee -a log-install.txt
echo "   - Dropbear OHP            : 8282"  | tee -a log-install.txt
echo "   - OpenSSH OHP             : 8383"  | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080 ,8000 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Wireguard               : 7070"  | tee -a log-install.txt
echo "   - Wireguard CF            : 2048"  | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN          : 1701"  | tee -a log-install.txt
echo "   - PPTP VPN                : 1732"  | tee -a log-install.txt
echo "   - SSTP VPN                : 444"  | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543"  | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 2443-2543"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 3443-3543"  | tee -a log-install.txt
echo "   - V2RAY Vmess TLS         : 8443"  | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS    : 80"  | tee -a log-install.txt
echo "   - V2RAY Vless TLS         : 8585"  | tee -a log-install.txt
echo "   - V2RAY Vless None TLS    : 8989"  | tee -a log-install.txt
echo "   - V2RAY VMESS KCP         : 11063"  | tee -a log-install.txt
echo "   - XRAY VLESS XTLS         : 6060"  | tee -a log-install.txt
echo "   - XRAY VLESS SPLICE       : 6060"  | tee -a log-install.txt
echo "   - XRAY VLESS WS XTLS      : 6060"  | tee -a log-install.txt
echo "   - XRAY VLESS None TCP     : 6666"  | tee -a log-install.txt
echo "   - XRAY VLESS TCP          : 6565"  | tee -a log-install.txt
echo "   - XRAY VMESS NONE TCP     : 6464"  | tee -a log-install.txt
echo "   - XRAY VMESS TCP          : 6363"  | tee -a log-install.txt
echo "   - XRAY VMESS KCP          : 6161"  | tee -a log-install.txt
echo "   - Trojan                  : 2087"  | tee -a log-install.txt
echo "   - Trojan GO               : 2096"  | tee -a log-install.txt
echo "   - Netflix Set ON"  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Kuala_Lumpur (UTC +8)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON/SET]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 UTC +8" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo ""

rm -f /root/setup.sh
rm -f /root/.bash_history
echo " Reboot 15 Sec, Setelah LOGIN, Ketik menu"
sleep 15
reboot
