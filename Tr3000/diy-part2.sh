#!/bin/bash

# ==========================================
# Cudy TR3000 V1 DIY Part 2
# ==========================================

echo "=========================================="
echo " Cudy TR3000 V1 DIY Part 2"
echo "=========================================="

# ------------------------------------------
# 删除 Bootstrap Mod
# ------------------------------------------

sed -i '/CONFIG_PACKAGE_luci-theme-bootstrap-mod=/d' .config


# ------------------------------------------
# Argon
# ------------------------------------------

sed -i '/CONFIG_PACKAGE_luci-theme-argon=/d' .config
sed -i '/CONFIG_PACKAGE_luci-app-argon-config=/d' .config

echo 'CONFIG_PACKAGE_luci-theme-argon=y' >> .config
echo 'CONFIG_PACKAGE_luci-app-argon-config=y' >> .config


# ------------------------------------------
# 明确关闭不需要的软件
# ------------------------------------------

sed -i '/CONFIG_PACKAGE_lucky=/d' .config
sed -i '/CONFIG_PACKAGE_qBittorrent=/d' .config
sed -i '/CONFIG_PACKAGE_luci-app-upnp=/d' .config
sed -i '/CONFIG_PACKAGE_luci-app-wireguard=/d' .config
sed -i '/CONFIG_PACKAGE_wireguard-tools=/d' .config
sed -i '/CONFIG_PACKAGE_docker=/d' .config
sed -i '/CONFIG_PACKAGE_dockerd=/d' .config
sed -i '/CONFIG_PACKAGE_luci-app-openclash=/d' .config


# ------------------------------------------
# 确认 TR3000 U-Boot Mod 目标
# ------------------------------------------

sed -i '/CONFIG_TARGET_DEVICE_mediatek_filogic_DEVICE_cudy_tr3000-v1-ubootmod=/d' .config

echo 'CONFIG_TARGET_DEVICE_mediatek_filogic_DEVICE_cudy_tr3000-v1-ubootmod=y' >> .config


echo "=========================================="
echo " Cudy TR3000 V1 DIY Part 2 完成"
echo "=========================================="
