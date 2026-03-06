# 1. 修改默认 IP (192.168.1.1 -> 192.168.10.1)  
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate  
  
# 2. 修改默认主题为 Argon  
# 首先，将 Makefile 中的默认主题从 bootstrap 改为 argon  
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile  
  
# 4. 手动设置 MT7986A CPU 频率显示  
sed -i '/"mediatek"\/\*|\"mvebu"\/\*/{n; s/.*/\tcpu_freq="2.0GHz" ;;/}' package/emortal/autocore/files/generic/cpuinfo  
