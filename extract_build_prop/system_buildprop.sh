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

sudo unzip -o "*.zip" 'system*' -d ~/dump

cd ~/dump

sudo brotli --decompress system.new.dat.br

sudo curl -sLo sdat2img.py https://raw.githubusercontent.com/xpirt/sdat2img/master/sdat2img.py

sudo python3 sdat2img.py system.transfer.list system.new.dat system.img

sudo 7z x system.img -y -osystem

cat system/system/build.prop
