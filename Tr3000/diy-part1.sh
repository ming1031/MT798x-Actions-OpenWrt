#!/bin/bash

# ==========================================
# Cudy TR3000 V1 DIY Part 1
# ==========================================

echo "=========================================="
echo " Cudy TR3000 V1 DIY Part 1"
echo "=========================================="

# Argon 主题与配置插件
git clone --depth=1 \
  https://github.com/jerrykuku/luci-theme-argon.git \
  package/luci-theme-argon

git clone --depth=1 \
  https://github.com/jerrykuku/luci-app-argon-config.git \
  package/luci-app-argon-config

# Nikki (Mihomo) 完整插件与 LuCI 界面
git clone --depth=1 \
  https://github.com/nikkinikki-org/OpenWrt-nikki.git \
  package/OpenWrt-nikki

echo "=========================================="
echo " DIY Part 1 完成"
echo "=========================================="
