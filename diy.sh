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

# Modify qemu version
sed -i 's/4.1.1/4.2.0/g' feeds/packages/utils/docker-ce/Makefile
sed -i 's/ed6fdbbdd272611446ff8036991e9b9f04a2ab2e3ffa9e79f3bab0eb9a95a1d2/d3481d4108ce211a053ef15be69af1bdd9dde1510fda80d92be0f6c3e98768f0/g' feeds/packages/utils/qemu/Makefile

# Modify docker-ce version
sed -i 's/19.03.3/19.03.6/g' feeds/packages/utils/qemu/Makefile
sed -i 's/63b0d28608f32573b9c03fa46247c6f959e9c08133ddf30a71276919de0194c0/805b586f5fbc5d236ac181068f7aa345bc5ec25d8f246e46e0f3ad55a69c63d5/g' feeds/packages/utils/docker-ce/Makefile
