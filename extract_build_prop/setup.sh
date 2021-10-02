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

#sudo apt-get install wget -y && sudo wget https://raw.githubusercontent.com/akhilnarang/scripts/master/setup/android_build_env.sh && sudo bash android*

sudo apt install brotli

sudo apt install p7zip-full -y

sudo mkdir -p ~/dump/system

python -m pip install protobuf

python -m pip install Brotli