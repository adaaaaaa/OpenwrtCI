#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
# Modify default IP
sed -i 's/192.168.1.1/192.168.100.252/g' package/base-files/files/bin/config_generate

# Modify the version number
sed -i 's/OpenWrt/holahola build $(date "+%Y.%m.%d") @ OpenWrt/g' package/lean/default-settings/files/zzz-default-settings

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' feeds/luci/collections/luci/Makefile
