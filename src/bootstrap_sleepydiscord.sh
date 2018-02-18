#!/bin/sh

# Bootstrap the sleepy-discord library.
# you need libssl-dev <---- FAIR WOR:D OF POSSIBLE HURT IF YOU DONT FOLLOW
# download and extract deps
wget http://ironlake.online/filestore/sdisco_deps.tar.gz
mv sdisco_deps.tar.gz ../3rdparty/sleepy-discord
cd ../3rdparty/sleepy-discord
tar xf sdisco_deps.tar.gz
rm sdisco_deps.tar.gz
make
mkdir -p ../../lib
mkdir -p ../../include
mv libsleepy_discord.a ../../lib/
cp -r include/sleepy_discord ../../include
echo "all done!"
