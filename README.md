Whats is ffretv-myththangos?
Whats the references to the name?

FFRETV is  a project of mine based of mythtv, thangos is a further customized project based off THingOS.

Furthermore, mythtv is based of qt/ffmpeg/mysql, and ThingOS is based off Buildroot.

It's the great fun world of software develoment that even a non-pro like myself gets to play with.



# Currently it works on RPI2/RPI3*
         I'm working to get the RPI/0 going now.
         *You can try 3 too , but it has debug enabled, so the mkrelease may fail unless you increase rootfs size, else                disable DEBUG in menuconfig first for the rpi3.


RPI/0/W 
ARMV6 ffretv.summary
```
# Basic Settings
Qt minimum version        5.2
Qt installed version      5.11.3
Compile type              release
Compiler cache            yes
DistCC                    no
qmake                     /home/pi/FFRETV_MYTHTHANGOS/ffretv-myththangos/output/raspberrypi/host/bin/qmake
install prefix            /usr
runtime prefix            /usr
CPU                       arm armv6zk (armv6zk)
ARMv5TE enabled           yes
ARMv6 enabled             yes
ARMv6T2 enabled           yes
VFP enabled               yes
NEON enabled              no
THUMB enabled             no

# Input Support
Joystick menu             yes
lirc support              yes
libCEC device support     no [/usr/include]
Video4Linux support       no
ivtv support              no
HD-PVR support            no
FireWire support          no
DVB support               yes [/usr/include]
DVB-S2 support            no
HDHomeRun support         yes
V@Box TV Gateway support  yes
Ceton support             no
ASI support               no

# Sound Output Support
PulseAudio support        no
OSS support               yes
ALSA support              yes
JACK support              default
libfftw3 support          no

# Video Output Support
x11 support               no
OpenMAX support           yes
OpenMAX Broadcom          yes
OpenMAX Bellagio          no
OpenGL support            yes
OpenGL video              yes
OpenGL ThemePainter       yes
MHEG support              yes
libass subtitle support   no

# Misc Features
Frontend                  yes
Backend                   yes
mythlogserver             no
multi threaded libavcodec yes
libxml2 support           yes [/home/pi/FFRETV_MYTHTHANGOS/ffretv-myththangos/output/raspberrypi/host/bin/../arm-buildroot-linux-gnueabihf/sysroot/usr/include/libxml2]
libdns_sd (Bonjour)       no
libcrypto                 no
OpenGL ES 2.0             yes
BD-J (Bluray java)        no
BD-J type                 j2se
systemd_notify            no
systemd_journal           no

# Bindings
bindings_perl             no
bindings_python           no
bindings_php              no

# External Codec Options
mp3lame                   no
xvid                      no
x264                      no
x265 (HEVC)               no
vpx                       no
SDL2                      no

Creating libs/libmythbase/mythconfig.h and libs/libmythbase/mythconfig.mak

WARNING: When using --arch=X or --cpu=X you must include the 
         output of ./configure along with any bug report.

```

RPI2 
ARM7 ffretv.summary
```

```


RPI3 
ARM8 ffretv.summary
```
```
