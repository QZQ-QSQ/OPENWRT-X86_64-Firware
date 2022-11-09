#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
##sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate
#### 修改主机名
##sed -i '/uci commit system/i\uci set system.@system[0].hostname='X86'' package/lean/default-settings/files/qiu-default-settings
#### 稳定版修改R21xxx+自己的名字
##sed -i 's/R22.2.2/R22.3.15/g' package/lean/default-settings/files/qiu-default-settings
sed -i 's/OpenWrt /Qiang build from Lede $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g' package/lean/default-settings/files/zzz-default-settings
