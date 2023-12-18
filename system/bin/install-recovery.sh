#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:17205248:c5101feae6506c06c7c63007df3a96ca1f6d3fe4; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:16365568:5736d8ddb1b4e0ffb2edf22820bc9e9fe4d1c066 EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY c5101feae6506c06c7c63007df3a96ca1f6d3fe4 17205248 5736d8ddb1b4e0ffb2edf22820bc9e9fe4d1c066:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
