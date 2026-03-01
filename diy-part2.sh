#!/bin/bash
set -e

echo "===== DIY Part 2: 开始执行 ====="

# 1. 修改默认 IP (192.168.1.1 -> 192.168.10.1)
if [ -f "package/base-files/files/bin/config_generate" ]; then
    sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
    echo "✅ 默认 IP 修改完成"
else
    echo "⚠️ 未找到 config_generate，跳过默认 IP 修改"
fi

# 2. 修改默认主题为 Argon
if [ -f "feeds/luci/collections/luci/Makefile" ]; then
    sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
    echo "✅ 默认主题修改为 Argon"
fi

# 3. 强制设置 Argon 为默认主题
echo "CONFIG_PACKAGE_luci-theme-argon=y" >> .config
echo "CONFIG_PACKAGE_luci-app-argon-config=y" >> .config
echo "✅ 默认主题强制设置完成"

# 4. 手动设置 MT7986A CPU 频率显示
CPUINFO_FILE="package/emortal/autocore/files/generic/cpuinfo"
if [ -f "$CPUINFO_FILE" ]; then
    sed -i '/"mediatek"\/\*|\"mvebu"\/\*/{n; s/.*/\tcpu_freq="2.0GHz" ;;/}' "$CPUINFO_FILE"
    echo "✅ CPU 频率显示设置完成"
else
    echo "⚠️ 未找到 cpuinfo 文件，跳过 CPU 频率修改"
fi

# 5. 安装 feeds 并修改 MTK QoS 菜单归类到 Network
./scripts/feeds update -a
./scripts/feeds install -a

EQOS_DIR=$(find package/ -type d -name "luci-app-eqos-mtk" | head -n1)
EQOS_KCONFIG="$EQOS_DIR/Kconfig
