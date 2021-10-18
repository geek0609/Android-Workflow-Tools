#!/bin/bash
#
# Copyright (C) 2021 Ashwin DS <astroashwin@outlook.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation;
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, see <http://www.gnu.org/licenses/>.

# tool to extract system/build.prop from rom.zip



if ${IS_DYNAMIC}; then

sudo unzip -o "*.zip" -d ~/dump
cd ~/dump
wget https://raw.githubusercontent.com/geek0609/android_tools/main/extract_build_prop/update_metadata_pb2.py
wget https://raw.githubusercontent.com/geek0609/android_tools/main/extract_build_prop/payload_dumper.py
python payload_dumper.py payload.bin

else

sudo unzip -o "*.zip" 'system*' -d ~/dump
cd ~/dump
fi


sudo brotli --decompress system.new.dat.br

sudo curl -sLo sdat2img.py https://raw.githubusercontent.com/xpirt/sdat2img/master/sdat2img.py

sudo python3 sdat2img.py system.transfer.list system.new.dat system.img

sudo 7z x system.img -y -osystem

cat system/system/build.prop


sudo brotli --decompress vendor.new.dat.br

sudo python3 sdat2img.py vendor.transfer.list vendor.new.dat vendor.img

sudo 7z x vendor.img -y -ovendor

ls vendor

cat vendor/build.prop



sudo brotli --decompress product.new.dat.br

sudo python3 sdat2img.py product.transfer.list product.new.dat product.img

sudo 7z x product.img -y -oproduct

ls product

cat product/build.prop

