#!/system/bin/sh
# 不要假设您的模块将位于何处。
# 如果您需要知道此脚本和模块的放置位置，请使用$MODDIR
# 这将确保您的模块仍能正常工作
# 即使Magisk将来更改其挂载点
MODDIR=${0%/*}

# 此脚本将在post-fs-data模式下执行
echo “8″ > /proc/sys/vm/page-cluster
echo “64000″ > /proc/sys/kernel/msgmni
echo “64000″ > /proc/sys/kernel/msgmax
echo “10″ > /proc/sys/fs/lease-break-time
echo “500,512000,64,2048″ > /proc/sys/kernel/sem
echo 0 > /sys/block/dm-0/queue/iostats
echo 0 > /sys/block/mmcblk0/queue/iostats
echo 0 > /sys/block/mmcblk0rpmb/queue/iostats
echo 0 > /sys/block/mmcblk1/queue/iostats
echo 0 > /sys/block/sda/queue/iostats
