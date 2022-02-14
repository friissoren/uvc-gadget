#!/bin/bash
GADGET_PATH=/sys/kernel/config/usb_gadget/camera

echo "" > $GADGET_PATH/UDC 

rm $GADGET_PATH/configs/c.1/acm.usb0

# rm $GADGET_PATH/configs/c.1/hid.usb0

rm $GADGET_PATH/configs/c.1/uvc.usb0
rmdir $GADGET_PATH/configs/c.1/strings/0x409
rmdir $GADGET_PATH/configs/c.1

rm $GADGET_PATH/functions/uvc.usb0/streaming/class/fs/h
rm $GADGET_PATH/functions/uvc.usb0/streaming/class/hs/h
rm $GADGET_PATH/functions/uvc.usb0/streaming/class/ss/h

rm $GADGET_PATH/functions/uvc.usb0/streaming/header/h/m
# rm $GADGET_PATH/functions/uvc.usb0/streaming/header/h/u
# rmdir $GADGET_PATH/functions/uvc.usb0/streaming/header/h

# rmdir $GADGET_PATH/functions/uvc.usb0/streaming/uncompressed/u/360p
# rmdir $GADGET_PATH/functions/uvc.usb0/streaming/uncompressed/u/480p
# rmdir $GADGET_PATH/functions/uvc.usb0/streaming/uncompressed/u/720p
# rmdir $GADGET_PATH/functions/uvc.usb0/streaming/uncompressed/u/1080p
# rmdir $GADGET_PATH/functions/uvc.usb0/streaming/uncompressed/u

# rmdir $GADGET_PATH/functions/uvc.usb0/streaming/mjpeg/m/480p
rmdir $GADGET_PATH/functions/uvc.usb0/streaming/mjpeg/m/720p
# rmdir $GADGET_PATH/functions/uvc.usb0/streaming/mjpeg/m/1080p
rmdir $GADGET_PATH/functions/uvc.usb0/streaming/mjpeg/m

# rm $GADGET_PATH/functions/uvc.usb0/control/class/ss/h
rm $GADGET_PATH/functions/uvc.usb0/control/class/fs/h

rmdir $GADGET_PATH/functions/uvc.usb0/control/header/h

rmdir $GADGET_PATH/functions/acm.usb0

# rmdir $GADGET_PATH/functions/hid.usb0

rmdir $GADGET_PATH/functions/uvc.usb0

rmdir $GADGET_PATH/strings/0x409

rmdir $GADGET_PATH

