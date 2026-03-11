#!/bin/bash

# 添加 Lucky 插件源
echo 'src-git lucky https://github.com/gdy666/luci-app-lucky.git' >> feeds.conf.default

# 添加常用依赖源 (确保能找到 OpenClash 运行所需的各种小工具)
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default
