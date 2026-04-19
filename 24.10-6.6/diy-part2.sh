#!/bin/bash
# Description: OpenWrt DIY script part 2 (After Update feeds)

# 1. 修改默认 IP 为 10.10.10.1 (防止和光猫 192.168.1.1 冲突，按需修改)
sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate

# 2. 强制关闭多机型编译 (你的 .config 里写了 MULTI_PROFILE=y，这里强行关掉，只编百里)
sed -i 's/CONFIG_TARGET_MULTI_PROFILE=y/# CONFIG_TARGET_MULTI_PROFILE is not set/g' .config

# 3. 终极补漏：强制追加 Nikki 所需的 JSON 解析和 IP 工具，以及网页终端 ttyd
cat >> .config <<EOF
CONFIG_PACKAGE_nftables-json=y
CONFIG_PACKAGE_ip-full=y
CONFIG_PACKAGE_luci-app-ttyd=y
EOF
