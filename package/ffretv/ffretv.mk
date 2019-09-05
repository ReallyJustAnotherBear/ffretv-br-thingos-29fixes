################################################################################
#
# ffretv
#
################################################################################

#FFRETV_VERSION = 
#FFRETV_SOURCE = ffretv-$(FFRETV_VERSION).tar.gz
#FFRETV_SOURCE = ffretv-31-preKF1.tar.gz
#manual install in place for now
FFRETV_SITE =  https://api.github.com/repos/kelsieflynn/ffretv/tarball/31-preKF1
FFRETV_INSTALL_STAGING = YES

FFRETV_LICENSE = LGPL-2.1+, libjpeg license
FFRETV_LICENSE_FILES = LICENSE.md COPYING.LGPLv2.1
ifeq ($(BR2_PACKAGE_FFRETV_GPL),y)
FFRETV_LICENSE += and GPL-2.0+
FFRETV_LICENSE_FILES += COPYING.GPLv2
endif

FFRETV_CONF_OPTS = \
	--prefix=/usr \
#qmake=
	--compile-type=release

FFRETV_DEPENDENCIES += host-pkgconf

ifeq ($(BR2_PACKAGE_FFRETV_GPL),y)
FFRETV_CONF_OPTS += --enable-gpl
else
FFRETV_CONF_OPTS += --disable-gpl
endif

ifeq ($(BR2_PACKAGE_FFRETV_NONFREE),y)
FFRETV_CONF_OPTS += --enable-nonfree
else
FFRETV_CONF_OPTS += --disable-nonfree
endif

ifeq ($(BR2_PACKAGE_FFRETV_FFRETV),y)
FFRETV_CONF_OPTS += --enable-ffmpeg
else
FFRETV_CONF_OPTS += --disable-ffmpeg
endif

ifeq ($(BR2_PACKAGE_FFRETV_FFPLAY),y)
FFRETV_DEPENDENCIES += sdl2
FFRETV_CONF_OPTS += --enable-ffplay
FFRETV_CONF_ENV += SDL_CONFIG=$(STAGING_DIR)/usr/bin/sdl2-config
else
FFRETV_CONF_OPTS += --disable-ffplay
endif

#ifeq ($(BR2_PACKAGE_FFRETV_FFSERVER),y)
#FFRETV_CONF_OPTS += --enable-ffserver
#else
#FFRETV_CONF_OPTS += --disable-ffserver
#endif

#ifeq ($(BR2_PACKAGE_FFRETV_AVRESAMPLE),y)
#FFRETV_CONF_OPTS += --enable-avresample
#else
#FFRETV_CONF_OPTS += --disable-avresample
#endif

#ifeq ($(BR2_PACKAGE_FFRETV_FFPROBE),y)
#FFRETV_CONF_OPTS += --enable-ffprobe
#else
#FFRETV_CONF_OPTS += --disable-ffprobe
#endif

#ifeq ($(BR2_PACKAGE_FFRETV_POSTPROC),y)
#FFRETV_CONF_OPTS += --enable-postproc
#else
#FFRETV_CONF_OPTS += --disable-postproc
#endif

#ifeq ($(BR2_PACKAGE_FFRETV_SWSCALE),y)
#FFRETV_CONF_OPTS += --enable-swscale
#else
#FFRETV_CONF_OPTS += --disable-swscale
#endif

#ifneq ($(call qstrip,$(BR2_PACKAGE_FFRETV_ENCODERS)),all)
#FFRETV_CONF_OPTS += --disable-encoders \
#	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFRETV_ENCODERS)),--enable-encoder=$(x))
#endif

#ifneq ($(call qstrip,$(BR2_PACKAGE_FFRETV_DECODERS)),all)
#FFRETV_CONF_OPTS += --disable-decoders \
#	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFRETV_DECODERS)),--enable-decoder=$(x))
#endif

#ifneq ($(call qstrip,$(BR2_PACKAGE_FFRETV_MUXERS)),all)
#FFRETV_CONF_OPTS += --disable-muxers \
#	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFRETV_MUXERS)),--enable-muxer=$(x))
#endif

#ifneq ($(call qstrip,$(BR2_PACKAGE_FFRETV_DEMUXERS)),all)
#FFRETV_CONF_OPTS += --disable-demuxers \
#	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFRETV_DEMUXERS)),--enable-demuxer=$(x))
#endif

#ifneq ($(call qstrip,$(BR2_PACKAGE_FFRETV_PARSERS)),all)
#FFRETV_CONF_OPTS += --disable-parsers \
#	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFRETV_PARSERS)),--enable-parser=$(x))
#endif

#ifneq ($(call qstrip,$(BR2_PACKAGE_FFRETV_BSFS)),all)
#FFRETV_CONF_OPTS += --disable-bsfs \
#	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFRETV_BSFS)),--enable-bsfs=$(x))
#endif

#ifneq ($(call qstrip,$(BR2_PACKAGE_FFRETV_PROTOCOLS)),all)
#FFRETV_CONF_OPTS += --disable-protocols \
#	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFRETV_PROTOCOLS)),--enable-protocol=$(x))
#endif

#ifneq ($(call qstrip,$(BR2_PACKAGE_FFRETV_FILTERS)),all)
#FFRETV_CONF_OPTS += --disable-filters \
#	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFRETV_FILTERS)),--enable-filter=$(x))
#endif

#ifeq ($(BR2_PACKAGE_FFRETV_INDEVS),y)
#FFRETV_CONF_OPTS += --enable-indevs
#ifeq ($(BR2_PACKAGE_ALSA_LIB),y)
#FFRETV_CONF_OPTS += --enable-alsa
#FFRETV_DEPENDENCIES += alsa-lib
#else
#FFRETV_CONF_OPTS += --disable-alsa
#endif
#else
#FFRETV_CONF_OPTS += --disable-indevs
#endif

#ifeq ($(BR2_PACKAGE_FFRETV_OUTDEVS),y)
#FFRETV_CONF_OPTS += --enable-outdevs
#ifeq ($(BR2_PACKAGE_ALSA_LIB),y)
#FFRETV_DEPENDENCIES += alsa-lib
#endif
#else
#FFRETV_CONF_OPTS += --disable-outdevs
#endif

#ifeq ($(BR2_TOOLCHAIN_HAS_THREADS),y)
#FFRETV_CONF_OPTS += --enable-pthreads
#else
#FFRETV_CONF_OPTS += --disable-pthreads
#endif

#ifeq ($(BR2_PACKAGE_ZLIB),y)
#FFRETV_CONF_OPTS += --enable-zlib
#FFRETV_DEPENDENCIES += zlib
#else
#FFRETV_CONF_OPTS += --disable-zlib
#endif

#ifeq ($(BR2_PACKAGE_BZIP2),y)
#FFRETV_CONF_OPTS += --enable-bzlib
#FFRETV_DEPENDENCIES += bzip2
#else
#FFRETV_CONF_OPTS += --disable-bzlib
#endif

#ifeq ($(BR2_PACKAGE_FDK_AAC)$(BR2_PACKAGE_FFRETV_NONFREE),yy)
#FFRETV_CONF_OPTS += --enable-libfdk-aac
#FFRETV_DEPENDENCIES += fdk-aac
#else
#FFRETV_CONF_OPTS += --disable-libfdk-aac
#endif

#ifeq ($(BR2_PACKAGE_FFRETV_GPL)$(BR2_PACKAGE_LIBCDIO_PARANOIA),yy)
#FFRETV_CONF_OPTS += --enable-libcdio
#FFRETV_DEPENDENCIES += libcdio-paranoia
#else
#FFRETV_CONF_OPTS += --disable-libcdio
#endif

#ifeq ($(BR2_PACKAGE_GNUTLS),y)
#FFRETV_CONF_OPTS += --enable-gnutls --disable-openssl
#FFRETV_DEPENDENCIES += gnutls
#else
#FFRETV_CONF_OPTS += --disable-gnutls
#ifeq ($(BR2_PACKAGE_OPENSSL),y)
## openssl isn't license compatible with GPL
#ifeq ($(BR2_PACKAGE_FFRETV_GPL)x$(BR2_PACKAGE_FFRETV_NONFREE),yx)
#FFRETV_CONF_OPTS += --disable-openssl
#else
#FFRETV_CONF_OPTS += --enable-openssl
#FFRETV_DEPENDENCIES += openssl
#endif
#else
#FFRETV_CONF_OPTS += --disable-openssl
#endif
#endif

#ifeq ($(BR2_PACKAGE_FFRETV_GPL)$(BR2_PACKAGE_LIBEBUR128),yy)
#FFRETV_DEPENDENCIES += libebur128
#endif

#ifeq ($(BR2_PACKAGE_LIBDRM),y)
#FFRETV_CONF_OPTS += --enable-libdrm
#FFRETV_DEPENDENCIES += libdrm
#else
#FFRETV_CONF_OPTS += --disable-libdrm
#endif

#ifeq ($(BR2_PACKAGE_LIBOPENH264),y)
#FFRETV_CONF_OPTS += --enable-libopenh264
#FFRETV_DEPENDENCIES += libopenh264
#else
#FFRETV_CONF_OPTS += --disable-libopenh264
#endif

#ifeq ($(BR2_PACKAGE_LIBVORBIS),y)
#FFRETV_DEPENDENCIES += libvorbis
#FFRETV_CONF_OPTS += \
#	--enable-libvorbis \
#	--enable-muxer=ogg \
#	--enable-encoder=libvorbis
#endif

#ifeq ($(BR2_PACKAGE_LIBVA),y)
#FFRETV_CONF_OPTS += --enable-vaapi
#FFRETV_DEPENDENCIES += libva
#else
#FFRETV_CONF_OPTS += --disable-vaapi
#endif

#ifeq ($(BR2_PACKAGE_LIBVDPAU),y)
#FFRETV_CONF_OPTS += --enable-vdpau
#FFRETV_DEPENDENCIES += libvdpau
#else
#FFRETV_CONF_OPTS += --disable-vdpau
#endif

ifeq ($(BR2_PACKAGE_RPI_USERLAND),y)
FFRETV_CONF_OPTS += --enable-omx-rpi \
	--extra-cflags=-I$(STAGING_DIR)/usr/include/IL
FFRETV_DEPENDENCIES += rpi-userland
else
FFRETV_CONF_OPTS += --disable-mmal --disable-omx --disable-omx-rpi
endif

# To avoid a circular dependency only use opencv if opencv itself does
# not depend on ffretv.
#ifeq ($(BR2_PACKAGE_OPENCV_LIB_IMGPROC)x$(BR2_PACKAGE_OPENCV_WITH_FFRETV),yx)
#FFRETV_CONF_OPTS += --enable-libopencv
#FFRETV_DEPENDENCIES += opencv
#else ifeq ($(BR2_PACKAGE_OPENCV3_LIB_IMGPROC)x$(BR2_PACKAGE_OPENCV3_WITH_FFRETV),yx)
#FFRETV_CONF_OPTS += --enable-libopencv
#FFRETV_DEPENDENCIES += opencv3
#else
#FFRETV_CONF_OPTS += --disable-libopencv
#endif

#ifeq ($(BR2_PACKAGE_OPUS),y)
#FFRETV_CONF_OPTS += --enable-libopus
#FFRETV_DEPENDENCIES += opus
#else
#FFRETV_CONF_OPTS += --disable-libopus
#endif

#ifeq ($(BR2_PACKAGE_LIBVPX),y)
#FFRETV_CONF_OPTS += --enable-libvpx
#FFRETV_DEPENDENCIES += libvpx
#else
#FFRETV_CONF_OPTS += --disable-libvpx
#endif

#ifeq ($(BR2_PACKAGE_LIBASS),y)
#FFRETV_CONF_OPTS += --enable-libass
#FFRETV_DEPENDENCIES += libass
#else
#FFRETV_CONF_OPTS += --disable-libass
#endif

#ifeq ($(BR2_PACKAGE_LIBBLURAY),y)
#FFRETV_CONF_OPTS += --enable-libbluray
#FFRETV_DEPENDENCIES += libbluray
#else
#FFRETV_CONF_OPTS += --disable-libbluray
#endif

#ifeq ($(BR2_PACKAGE_RTMPDUMP),y)
#FFRETV_CONF_OPTS += --enable-librtmp
#FFRETV_DEPENDENCIES += rtmpdump
#else
#FFRETV_CONF_OPTS += --disable-librtmp
#endif

#ifeq ($(BR2_PACKAGE_LAME),y)
#FFRETV_CONF_OPTS += --enable-libmp3lame
#FFRETV_DEPENDENCIES += lame
#else
#FFRETV_CONF_OPTS += --disable-libmp3lame
#endif

#ifeq ($(BR2_PACKAGE_LIBMODPLUG),y)
#FFRETV_CONF_OPTS += --enable-libmodplug
#FFRETV_DEPENDENCIES += libmodplug
#else
#FFRETV_CONF_OPTS += --disable-libmodplug
#endif

#ifeq ($(BR2_PACKAGE_SPEEX),y)
#FFRETV_CONF_OPTS += --enable-libspeex
#FFRETV_DEPENDENCIES += speex
#else
#FFRETV_CONF_OPTS += --disable-libspeex
#endif

#ifeq ($(BR2_PACKAGE_LIBTHEORA),y)
#FFRETV_CONF_OPTS += --enable-libtheora
#FFRETV_DEPENDENCIES += libtheora
#else
#FFRETV_CONF_OPTS += --disable-libtheora
#endif

#ifeq ($(BR2_PACKAGE_WAVPACK),y)
#FFRETV_CONF_OPTS += --enable-libwavpack
#FFRETV_DEPENDENCIES += wavpack
#else
#FFRETV_CONF_OPTS += --disable-libwavpack
#endif

#ifeq ($(BR2_PACKAGE_LIBICONV),y)
#FFRETV_CONF_OPTS += --enable-iconv
#FFRETV_DEPENDENCIES += libiconv
#else
#FFRETV_CONF_OPTS += --disable-iconv
#endif

# ffretv freetype support require fenv.h which is only
# available/working on glibc.
# The microblaze variant doesn't provide the needed exceptions
#ifeq ($(BR2_PACKAGE_FREETYPE)$(BR2_TOOLCHAIN_USES_GLIBC)x$(BR2_microblaze),yyx)
#FFRETV_CONF_OPTS += --enable-libfreetype
#FFRETV_DEPENDENCIES += freetype
#else
#FFRETV_CONF_OPTS += --disable-libfreetype
#endif

#ifeq ($(BR2_PACKAGE_FONTCONFIG),y)
#FFRETV_CONF_OPTS += --enable-fontconfig
#FFRETV_DEPENDENCIES += fontconfig
#else
#FFRETV_CONF_OPTS += --disable-fontconfig
#endif

#ifeq ($(BR2_PACKAGE_OPENJPEG),y)
#FFRETV_CONF_OPTS += --enable-libopenjpeg
#FFRETV_DEPENDENCIES += openjpeg
#else
#FFRETV_CONF_OPTS += --disable-libopenjpeg
#endif

#ifeq ($(BR2_PACKAGE_X264)$(BR2_PACKAGE_FFRETV_GPL),yy)
#FFRETV_CONF_OPTS += --enable-libx264
#FFRETV_DEPENDENCIES += x264
#else
#FFRETV_CONF_OPTS += --disable-libx264
#endif

#ifeq ($(BR2_PACKAGE_X265)$(BR2_PACKAGE_FFRETV_GPL),yy)
#FFRETV_CONF_OPTS += --enable-libx265
#FFRETV_DEPENDENCIES += x265
#else
#FFRETV_CONF_OPTS += --disable-libx265
#endif

# Explicitly disable everything that doesn't match for ARM
# FFRETV "autodetects" by compiling an extended instruction via AS
# This works on compilers that aren't built for generic by default
ifeq ($(BR2_ARM_CPU_ARMV4),y)
FFRETV_CONF_OPTS += --disable-armv5te
endif
ifeq ($(BR2_ARM_CPU_ARMV6)$(BR2_ARM_CPU_ARMV7A),y)
FFRETV_CONF_OPTS += --enable-armv6
else
FFRETV_CONF_OPTS += --disable-armv6 --disable-armv6t2
endif
ifeq ($(BR2_ARM_CPU_HAS_VFPV2),y)
FFRETV_CONF_OPTS += --enable-vfp
else
FFRETV_CONF_OPTS += --disable-vfp
endif
ifeq ($(BR2_ARM_CPU_HAS_NEON),y)
FFRETV_CONF_OPTS += --enable-neon
else ifeq ($(BR2_aarch64),y)
FFRETV_CONF_OPTS += --enable-neon
else
FFRETV_CONF_OPTS += --disable-neon
endif

ifeq ($(BR2_STATIC_LIBS),)
FFRETV_CONF_OPTS += --enable-pic
else
FFRETV_CONF_OPTS += --disable-pic
endif

FFRETV_CONF_OPTS += $(call qstrip,$(BR2_PACKAGE_FFRETV_EXTRACONF))

# Override FFRETV_CONFIGURE_CMDS: ffretv does not support --target and others
define FFRETV_CONFIGURE_CMDS
	(cd $(FFRETV_SRCDIR) && rm -rf config.cache && \
	$(TARGET_CONFIGURE_OPTS) \
	$(TARGET_CONFIGURE_ARGS) \
	$(FFRETV_CONF_ENV) \
	./configure \
		--enable-cross-compile \
		--cross-prefix=$(TARGET_CROSS) \
		--sysroot=$(STAGING_DIR) \
		--host-cc="$(HOSTCC)" \
		--arch=$(BR2_ARCH) \
		--target-os="linux" \
		--disable-stripping \
		--pkg-config="$(PKG_CONFIG_HOST_BINARY)" \
		$(SHARED_STATIC_LIBS_OPTS) \
		$(FFRETV_CONF_OPTS) \
	)
endef

define FFRETV_REMOVE_EXAMPLE_SRC_FILES
	rm -rf $(TARGET_DIR)/usr/share/ffretv/examples
endef
FFRETV_POST_INSTALL_TARGET_HOOKS += FFRETV_REMOVE_EXAMPLE_SRC_FILES

$(eval $(autotools-package))
