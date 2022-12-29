# Setup folder 
mkdir c
cd c
# sync rom
repo init --depth=1 --no-repo-verify -u https://github.com/CherishOS/android_manifest -b tiramisu -g default,-mips,-darwin,-notdefault
git clone https://github.com/god-goku/local-manifest.git --depth 1 -b cherry11 .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8

# build rom
. build/envsetup.sh
lunch cherish_veux-userdebug
export TZ=Asia/Kolkata
export BUILD_USER=Monu
export BUILD_HOST=Loda
export BUILD_USERNAME=Monu
export BUILD_HOSTNAME=Loda
make bacon -j8

# Upload
alias devuploads='bash <(curl -s https://devuploads.com/upload.sh)'
devuploads -f /root/c/out/target/product/veux/Cherish-OS*.zip -k 60mkrqr5i8wl69d4sf
