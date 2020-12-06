#!/system/vendor/bin/sh
# High assurance boot image verification service

if [[ $1 == "complete" ]]; then
    error=`/vendor/bin/getprop vendor.hab.error`
    updating=`/vendor/bin/getprop ro.boot.updating`
    if [[ -z $error ]]; then
        if [[ $updating == "1" ]]; then
             /vendor/bin/bl_notify --set --hab-notify "HAB_SV_UPGRADE"
        else
             /vendor/bin/bl_notify --set --hab-notify "HAB_OK"
        fi
    fi
    exit 0
fi

product=`/vendor/bin/getprop ro.boot.hab.product`
cid=`/vendor/bin/getprop ro.boot.hab.cid`
csv=`/vendor/bin/getprop ro.boot.hab.csv`
secure_hw=`/vendor/bin/getprop ro.boot.secure_hardware`
verified_boot_state=`/vendor/bin/getprop ro.boot.verifiedbootstate`

echo "expected:"
echo "  product:$product"
echo "  cid:$cid"
echo "  csv:$csv"


exit 0
