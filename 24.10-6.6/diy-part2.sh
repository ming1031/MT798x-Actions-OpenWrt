#!/bin/bash
# 删除官方旧版主题
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/applications/luci-app-argon-config

# 克隆新版插件到 package 目录
mkdir -p package/community
git clone -b master https://github.com/jerrykuku/luci-theme-argon.git package/community/luci-theme-argon
git clone -b master https://github.com/jerrykuku/luci-app-argon-config.git package/community/luci-app-argon-config
git clone https://github.com/gdy666/luci-app-lucky.git package/community/luci-app-lucky
