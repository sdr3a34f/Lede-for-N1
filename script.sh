#!/bin/bash
cd openwrt
# wireless
#rm -rf files/etc/config/wireless
#rm -rf files/etc/modules.d/wireless_enable
# Firewall custom
#echo "iptables -t nat -I POSTROUTING -o eth0 -j MASQUERADE" >> package/network/config/firewall/files/firewall.user

# geodata
# wget -q -cP files/usr/share/v2ray https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
# wget -q -cP files/usr/share/v2ray https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat

# Add luci-theme
# rm -rf package/lean/luci-theme-argon
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci/Makefile

#Add amlogic管理
# svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/lean/luci-app-amlogic
# svn_export "main" "luci-app-amlogic" "package/luci-app-amlogic" "https://github.com/ophub/luci-app-amlogic"
# rm -rf package/luci-app-amlogic
# git clone https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic

svn co https://github.com/ophub/luci-app-amlogic/trunk package/amlogic
