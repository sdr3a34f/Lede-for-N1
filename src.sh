#!/bin/bash
cd openwrt
# Add a feed source
# echo 'src-git SSRplus https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' >>feeds.conf.default
# echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> "feeds.conf.default"

# 修复编译错误
# sed -i 's/TARGET_CFLAGS += -DHAVE_MAP_SYNC/TARGET_CFLAGS += -DHAVE_MAP_SYNC -D_LARGEFILE64_SOURCE/g'  feeds/packages/utils/xfsprogs/Makefile
