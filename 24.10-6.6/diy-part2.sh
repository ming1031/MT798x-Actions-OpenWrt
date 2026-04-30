#!/bin/bash

# 1. 修正后台 IP
sed -i "s/192.168.1.1/$IP_ADDR/g" package/base-files/files/bin/config_generate

# 2. 克隆兼容 24.10 的 Argon 主题
rm -rf package/feeds/luci/luci-theme-argon
git clone -b master https://github.com/jerrykuku/luci-theme-argon.git package/downloads/luci-theme-argon
# 建议直接放到 package 目录下最稳妥
git clone -b master https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone -b master https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config

# 3. 克隆 Lucky
git clone https://github.com/gdy666/luci-app-lucky.git package/luci-app-lucky
