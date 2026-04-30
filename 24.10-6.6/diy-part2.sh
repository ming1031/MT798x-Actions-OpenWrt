#!/bin/bash

# 1. 克隆兼容 24.10 的 Argon 主题 (master 分支)
rm -rf package/lean/luci-theme-argon
rm -rf package/lean/luci-app-argon-config
git clone -b master https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone -b master https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config

# 2. 克隆 Lucky
rm -rf package/lean/luci-app-lucky
git clone https://github.com/gdy666/luci-app-lucky.git package/lean/luci-app-lucky
