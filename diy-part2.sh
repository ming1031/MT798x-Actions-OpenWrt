#!/bin/bash
# 自定义固件脚本（MT7986A + ImmortalWrt 21.02）

# 1. 强制修改 WiFi 驱动版本号显示 (从 7.6.7.3 改回 7.6.7.2)
# 这一步能确保即使源码更新了，你的后台依然显示 v7.6.7.2
find package/mtk/drivers/mt_wifi -type f -name "rtmp_def.h" | xargs -r sed -i 's/7.6.7.3/7.6.7.2/g'
find package/mtk/drivers/mt_wifi -type f -name "Makefile" | xargs -r sed -i 's/7.6.7.3/7.6.7.2/g'

# 2. 修改默认 IP
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 3. 拉取 Argon 主题最新源码 (如果 feeds 里没有或者版本旧)
rm -rf package/feeds/luci/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/downloads/luci-theme-argon
# 将下载的主题移动到编译目录
mkdir -p package/custom
mv package/downloads/luci-theme-argon package/custom/

# 4. 修改默认主题为 Argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 5. 手动设置 MT7986A CPU 频率显示
sed -i '/"mediatek"\/\*|\"mvebu"\/\*/{n; s/.*/\tcpu_freq="2.0GHz" ;;/}' package/emortal/autocore/files/generic/cpuinfo

# 6. 额外优化：修改主机名为 JDCloud-Baili
sed -i 's/ImmortalWrt/JDCloud-Baili/g' package/base-files/files/bin/config_generate
