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

#添加server酱
git clone -b master --single-branch https://github.com/tty228/luci-app-serverchan package/new/luci-app-serverchan

#添加oled
git clone -b master --single-branch https://github.com/NateLol/luci-app-oled package/new/luci-app-oled
mv package/new/luci-app-oled/po/zh_Hans package/new/luci-app-oled/po/zh-cn

#替换京东签到
rm -rf package/lean/luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/new/luci-app-jd-dailybonus

#替换argon主题
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 --single-branch https://github.com/jerrykuku/luci-theme-argon package/new/luci-theme-argon

#添加edge主题
git clone -b 18.06 --single-branch https://github.com/garypang13/luci-theme-edge.git package/new/luci-theme-edge

#添加甜糖星愿自动采集
git clone https://github.com/jerrykuku/luci-app-ttnode.git  package/new/luci-app-ttnode
