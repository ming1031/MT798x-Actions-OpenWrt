#!/bin/bash
# 自定义固件脚本（MT7986A + ImmortalWrt 21.02）

# 1. 修改默认 IP（可选）
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate


# 2. 修改默认主题为 Argon（核心修改）
# 将 LuCI 默认 bootstrap 主题替换为 argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile


# 3. 手动设置 MT7986A CPU 频率显示（保留你原有修改）
sed -i '/"mediatek"\/\*|\"mvebu"\/\*/{n; s/.*/\tcpu_freq="2.0GHz" ;;/}' package/emortal/autocore/files/generic/cpuinfo


# 4. 优化：移除不需要的主题（可选）
# 为避免体积增大，可删除 bootstrap 和 design
# rm -rf feeds/luci/themes/luci-theme-bootstrap
# rm -rf feeds/luci/themes/luci-theme-design


# 5. 确保 Lucky 插件能编译（如需要）
# git clone https://github.com/gandalf15/luci-app-lucky.git package/lucky
