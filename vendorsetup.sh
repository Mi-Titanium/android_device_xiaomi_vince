git clone --depth=1 https://gitlab.com/nekoprjkt/aosp-clang -b 17 prebuilts/clang/host/linux-x86/clang-aosp

# Clone common tree if not exists
if [ ! -d "device/xiaomi/mititanium-common" ]; then
    git clone https://github.com/Mi-Titanium/android_device_xiaomi_mititanium-common -b 15 device/xiaomi/mititanium-common
else
    echo "device/xiaomi/mititanium-common already exists, skipping clone"
fi

# Clone proprietary if not exists
if [ ! -d "vendor/xiaomi/vince" ]; then
    git clone --depth=1 https://github.com/Mi-Titanium/android_vendor_xiaomi_vince vendor/xiaomi/vince
else
    echo "vendor/xiaomi/vince already exists, skipping clone"
fi

if [ ! -d "vendor/xiaomi/mititanium-common" ]; then
    git clone --depth=1 https://github.com/Mi-Titanium/proprietary_vendor_xiaomi_mititanium-common vendor/xiaomi/mititanium-common
else
    echo "vendor/xiaomi/mititanium-common already exists, skipping clone"
fi

if [ ! -d "vendor/xiaomi/mititanium-common-graphics" ]; then
    git clone --depth=1 https://github.com/Mi-Titanium/proprietary_vendor_xiaomi_mititanium-common-graphics vendor/xiaomi/mititanium-common-graphics
else
    echo "vendor/xiaomi/mititanium-common-graphics already exists, skipping clone"
fi

if [ ! -d "vendor/xiaomi/mititanium-common-qc" ]; then
    git clone --depth=1 https://github.com/Mi-Titanium/proprietary_vendor_xiaomi_mititanium-common-qc vendor/xiaomi/mititanium-common-qc
else
    echo "vendor/xiaomi/mititanium-common-qc already exists, skipping clone"
fi

if [ ! -d "kernel/xiaomi/msm8953" ]; then
    git clone --depth=1 https://github.com/Mi-Titanium/android_kernel_xiaomi_vince kernel/xiaomi/msm8953
else
    echo "kernel/xiaomi/msm8953 already exists, skipping clone"
fi

if [ ! -d "device/xiaomi/vince/camera" ]; then
    git clone --depth=1 https://github.com/Mi-Titanium/device_xiaomi-msm8953_camera -b 4.9 device/xiaomi/vince/camera
else
    echo "device/xiaomi/vince/camera already exists, skipping clone"
fi

if [ ! -d "hardware/xiaomi" ]; then
    git clone --depth=1 https://github.com/vince-labs/hardware_xiaomi -b 15 hardware/xiaomi
else
    echo "hardware/xiaomi already exists, skipping clone"
fi

if [ ! -d "vendor/lineage-priv" ]; then
    git clone --depth=1 https://github.com/k4ngcaribug/vendor_extra -b 14 vendor/lineage-priv
else
    echo "vendor/lineage-priv already exists, skipping clone"
fi
