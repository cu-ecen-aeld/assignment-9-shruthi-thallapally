#!/bin/sh
# references: https://github.com/cu-ecen-aeld/ldd3/blob/master/scull/scull_unload
module="scull"
device="scull"

# invoke rmmod with all arguments we got
rmmod $module $* || exit 1

# Remove stale nodes

rm -f /dev/${device} /dev/${device}[0-3] 
rm -f /dev/${device}priv
rm -f /dev/${device}pipe /dev/${device}pipe[0-3]
rm -f /dev/${device}single
rm -f /dev/${device}uid
rm -f /dev/${device}wuid
