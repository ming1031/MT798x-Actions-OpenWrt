#!/bin/bash
# 修改默认 IP (192.168.6.1 -> 10.10.10.1)  
# sed -i 's/192.168.6.1/10.10.10.1/g' package/base-files/files/bin/config_generate

# 手动设置 MT7986A CPU 频率显示  
sed -i '/"mediatek"\/\*|\"mvebu"\/\*/{n; s/.*/\tcpu_freq="2.0GHz" ;;/}' package/emortal/autocore/files/generic/cpuinfo
exit 0
