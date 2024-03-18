#!/bin/bash
cd openwrt

# OpenWrt golang新版本
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang

#Add amlogic管理
git clone https://github.com/ophub/luci-app-amlogic.git  package-temp/luci-app-amlogic
mv -f package-temp/luci-app-amlogic/luci-app-amlogic package/lean/
rm -rf package-temp

## 微信/Telegram 推送插件
git clone -b openwrt-18.06 https://github.com/tty228/luci-app-wechatpush.git
