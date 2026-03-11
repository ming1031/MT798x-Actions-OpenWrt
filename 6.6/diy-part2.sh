#!/bin/bash

# 1. 修改默认 IP 为 10.10.10.1
sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate

# 2. 修改默认主机名为 JDCloud-Baili
sed -i 's/ImmortalWrt/JDCloud-Baili/g' package/base-files/files/bin/config_generate

# 3. 设置 Argon 为默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 4. 移除多余的无用配置（可选，保持固件纯净）
# rm -rf feeds/luci/applications/luci-app-ssr-plus
