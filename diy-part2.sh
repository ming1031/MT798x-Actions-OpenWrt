#!/bin/bash
# ... (保留原有的注释)

# 1. 修改默认 IP (可选，如果需要将 1.1 改为其他，取消下面注释)
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 2. 修改默认主题为 Design (核心修改)
# 这行命令会将 LuCI 默认集合中的 bootstrap 替换为 design
sed -i 's/luci-theme-bootstrap/luci-theme-design/g' feeds/luci/collections/luci/Makefile

# 3. 手动设置 MT7986A CPU 频率显示 (你原有的)
sed -i '/"mediatek"\/\*|\"mvebu"\/\*/{n; s/.*/\tcpu_freq="2.0GHz" ;;/}' package/emortal/autocore/files/generic/cpuinfo

# 4. 优化：移除重复的主题（可选，防止固件臃肿）
# rm -rf feeds/luci/themes/luci-theme-argon
# rm -rf feeds/luci/themes/luci-theme-bootstrap

# 5. 修复：确保 Lucky 插件能够编译 (针对某些源码环境)
# 如果编译时发现缺少 lucky，取消下面这行的注释
# git clone https://github.com/gandalf15/luci-app-lucky.git package/lucky
