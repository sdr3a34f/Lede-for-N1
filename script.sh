#!/bin/bash
cd openwrt

#Add amlogic管理
git clone https://github.com/ophub/luci-app-amlogic.git  package-temp/luci-app-amlogic
mv -f package-temp/luci-app-amlogic/luci-app-amlogic package/lean/
rm -rf package-temp

## 微信/Telegram 推送插件
rm -rf feeds/luci/applications/luci-app-wechatpush
git clone -b openwrt-18.06 https://github.com/tty228/luci-app-wechatpush.git feeds/luci/applications/luci-app-wechatpush
