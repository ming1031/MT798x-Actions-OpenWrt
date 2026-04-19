#!/bin/bash
# Description: OpenWrt DIY script part 2 (After Update feeds)

# 1. 修改默认 IP 为 10.10.10.1
sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate

# 2. 补齐 Nikki 运行所需的最后几个小包（不含本体）
cat >> .config <<EOF
CONFIG_PACKAGE_nftables-json=y
CONFIG_PACKAGE_ip-full=y
CONFIG_PACKAGE_luci-app-ttyd=y
EOF
