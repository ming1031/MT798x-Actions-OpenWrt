#!/bin/bash
# 手动设置 MT7986A CPU 频率显示  
sed -i '/"mediatek"\/\*|\"mvebu"\/\*/{n; s/.*/\tcpu_freq="2.0GHz" ;;/}' package/emortal/autocore/files/generic/cpuinfo
exit 0
