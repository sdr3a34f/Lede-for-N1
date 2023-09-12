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
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/lean/luci-app-amlogic

#Add luci-app-passwall2
# git clone https://github.com/xiaorouji/openwrt-passwall.git -b packages package/passwall_package
# git clone https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2

git clone -b packages --depth=1 https://github.com/xiaorouji/openwrt-passwall.git package/passwall_package
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2

#Add openclash
# svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/lean/luci-app-openclash

#Add luci-app-smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns

#Add luci-app-adguardhome
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/lean/luci-app-adguardhome
