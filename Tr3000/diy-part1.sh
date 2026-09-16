#!/bin/bash

# ==========================================
# Cudy TR3000 V1 DIY Part 1
# ==========================================

echo "=========================================="
echo " Cudy TR3000 V1 DIY Part 1"
echo "=========================================="

# Argon
git clone --depth=1 \
  https://github.com/jerrykuku/luci-theme-argon.git \
  package/luci-theme-argon

# Argon Config
git clone --depth=1 \
  https://github.com/jerrykuku/luci-app-argon-config.git \
  package/luci-app-argon-config

echo "=========================================="
echo " DIY Part 1 完成"
echo "=========================================="
