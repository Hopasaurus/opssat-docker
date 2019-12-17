#docker run -it --rm -p 5920:5920 -p 5901:5900 -v `pwd`:/work opssat bash
docker run -it --rm --priviliged -p 5920:5920 -p 5901:5900 -v /dev/bus/usb:/dev/bus/usb -v `pwd`:/work opssat sh /root/boot.sh

