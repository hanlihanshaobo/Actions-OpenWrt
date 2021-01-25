#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/new/luci-app-jd-dailybonus
git clone -b master --single-branch https://github.com/tty228/luci-app-serverchan package/new/luci-app-serverchan
git clone -b master --single-branch https://github.com/NateLol/luci-app-oled package/new/luci-app-oled

#替换argon主题
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 --single-branch https://github.com/jerrykuku/luci-theme-argon package/new/luci-theme-argon
