#!/bin/bash

# 1. 修改默认 IP (从 192.168.1.1 改为 192.168.10.1)
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 2. 拉取 Aurora 主题与 Lucky 插件 (直接克隆到 package 目录)
rm -rf package/luci-theme-aurora
git clone https://github.com/eamonxg/luci-theme-aurora.git package/luci-theme-aurora

rm -rf package/luci-app-lucky
git clone https://github.com/sirpdboy/luci-app-lucky.git package/luci-app-lucky

# 3. 设置默认主题为 Aurora
# 由于是 24.10 分支，我们直接通过修改默认配置来指定主题
sed -i 's/luci-theme-bootstrap/luci-theme-aurora/g' feeds/luci/collections/luci/Makefile

# 4. 手动设置 MT7986A CPU 频率显示 (2.0GHz)
# 针对 padavanonly 源码中的 autocore 路径进行修正
[ -f package/emortal/autocore/files/generic/cpuinfo ] && \
sed -i '/"mediatek"\/\*|\"mvebu"\/\*/{n; s/.*/\tcpu_freq="2.0GHz" ;;/}' package/emortal/autocore/files/generic/cpuinfo

# 5. 强制在 .config 中开启插件
echo 'CONFIG_PACKAGE_luci-theme-aurora=y' >> .config
echo 'CONFIG_PACKAGE_luci-app-lucky=y' >> .config
