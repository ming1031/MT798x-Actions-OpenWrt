#!/bin/bash

# 1. 下载 Argon 主题及其配置插件 (使用 master 分支兼容 24.10)
# 先删除可能存在的旧目录
rm -rf package/lean/luci-theme-argon
rm -rf package/lean/luci-app-argon-config

git clone -b master https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone -b master https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config

# 2. 下载 Lucky 插件
rm -rf package/lean/luci-app-lucky
git clone https://github.com/gdy666/luci-app-lucky.git package/lean/luci-app-lucky
