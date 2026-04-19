#!/bin/bash
# Description: OpenWrt DIY script part 1 (Before Update feeds)

# 1. 添加 Nikki 插件源 (以便随时可以编译本体)
echo "src-git nikki https://github.com/houzi7141/openwrt-nikki.git" >> "feeds.conf.default"

# 2. 如果你想用最新版的 Argon 主题，也可以取消下面这两行的注释来拉取最新源码
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
