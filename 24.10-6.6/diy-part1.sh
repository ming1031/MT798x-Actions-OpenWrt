# 进入 package 目录
# 注意：如果你的脚本是在 openwrt 根目录执行的，请确保路径正确
# 建议在脚本里先 cd package

# 1. 克隆修复版 Argon 主题
rm -rf lean/luci-theme-argon # 如果有旧的先删掉
git clone -b master https://github.com/jerrykuku/luci-theme-argon.git lean/luci-theme-argon
git clone -b master https://github.com/jerrykuku/luci-app-argon-config.git lean/luci-app-argon-config

# 2. 克隆 Lucky 插件
git clone https://github.com/gdy666/luci-app-lucky.git lean/luci-app-lucky
