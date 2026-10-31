# OrangeFox Recovery Device Tree for Samsung Galaxy Tab A8 (SM-X200)

[![XDA Thread](https://img.shields.io/badge/XDA-Thread-orange?logo=xda-developers)](https://xdaforums.com/t/recovery-unofficial-orangefox-recovery-project-r12-0_1-sm-x200-gta8wifi.4807121/)
[![GitHub Release](https://img.shields.io/github/v/release/encipherdev/android_recovery_samsung_gta8wifi?color=orange&logo=github)](https://github.com/encipherdev/android_recovery_samsung_gta8wifi/releases/tag/R12.0_1)

Device tree for building OrangeFox Recovery R12.1 for the Samsung Galaxy Tab A8 10.5 (2021) Wi-Fi (`gta8wifi` / `SM-X200`).

## Device Specifications

| Feature | Specification |
| :--- | :--- |
| SoC | Unisoc Tiger T618 (`ums512_25c10`) |
| CPU | 2x ARM Cortex-A75 @ 2.0 GHz, 6x ARM Cortex-A55 @ 2.0 GHz |
| GPU | Mali G52 MP2 |
| Memory | 3 GB / 4 GB LPDDR4X |
| Storage | 32 GB / 64 GB / 128 GB eMMC 5.1 |
| Resolution | 1920 x 1200 pixels (16:10) |
| Architecture | ARM64 (`arm64-v8a`) |
| Kernel Version | Linux 4.14.x |
| Shipped Android | 11 (One UI Core 3.1), upgradable to 14 (One UI 6) |

---

## Panel & Hardware Support

This tree contains touchscreen firmware and configurations for all hardware revisions of SM-X200:
- **Novatek NT36523B** (`NVT-ts` on SPI)
- **Himax HX83102E** (INX / HSD variants)
- **Focaltech FT5x46** (BOE variant)

---

## Building OrangeFox Recovery

### 1. Sync Sources

Sync the OrangeFox 12.1 manifest:

```bash
mkdir ~/orangefox_12.1 && cd ~/orangefox_12.1
git clone https://gitlab.com/OrangeFox/sync.git
./sync/orangefox_sync.sh --branch 12.1 --path ~/orangefox_12.1
```

### 2. Clone Device Tree

Clone this repository into `device/samsung/gta8wifi`:

```bash
git clone https://github.com/encipherdev/android_recovery_samsung_gta8wifi.git -b fox-12.1 device/samsung/gta8wifi
```

### 3. Build Note (DRM Backend)

If using upstream OrangeFox `fox_12.1` with Unisoc platforms, revert commit `c2460eb2` in `bootable/recovery` to prevent `Atomic commit failed ret=-22` errors:

```bash
cd bootable/recovery
git revert -n c2460eb2f1dd6657644bfbfecf3bb52d282495b9
cd ../..
```

### 4. Compile

```bash
source build/envsetup.sh
lunch twrp_gta8wifi-eng
m recoveryimage -j$(nproc)
```

Output files will be located in `out/target/product/gta8wifi/`:
- `OrangeFox-*.img` (Raw recovery image)
- `OrangeFox-*.img.tar` (Odin-flashable tarball)
- `OrangeFox-*.zip` (Recovery-flashable archive)

---

## Credits

- **Magendanz** for the initial TWRP 12.1 device tree
- **TeamWin** (TWRP)
- **OrangeFox Recovery Project**
- **encipherdev**
