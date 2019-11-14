#
# nb-qemu-glib
#
# Copyright (C) 2019 Michael Goffioul
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, see <http://www.gnu.org/licenses/>.
#

LOCAL_PATH := $(call my-dir)

GLIB_COMMON_CFLAGS := \
	-D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE \
	-Wall -fno-strict-aliasing -Wall -Wimplicit-fallthrough -Wstrict-prototypes \
	-Wunused -Wno-unused-parameter -Wno-bad-function-cast -Wno-pedantic \
	-Werror=declaration-after-statement -Werror=format=2 -Werror=implicit-function-declaration \
	-Werror=init-self -Werror=missing-include-dirs -Werror=missing-prototypes \
	-Werror=pointer-arith -Wno-int-conversion -Wno-missing-field-initializers

GLIB_SRC_FILES := \
	glib/deprecated/gallocator.c \
	glib/deprecated/gcache.c \
	glib/deprecated/gcompletion.c \
	glib/deprecated/grel.c \
	glib/deprecated/gthread-deprecated.c \
	glib/libcharset/localcharset.c \
	glib/garcbox.c \
	glib/garray.c \
	glib/gasyncqueue.c \
	glib/gatomic.c \
	glib/gbacktrace.c \
	glib/gbase64.c \
	glib/gbitlock.c \
	glib/gbookmarkfile.c \
	glib/gbytes.c \
	glib/gcharset.c \
	glib/gchecksum.c \
	glib/gconvert.c \
	glib/gdataset.c \
	glib/gdate.c \
	glib/gdatetime.c \
	glib/gdir.c \
	glib/genviron.c \
	glib/gerror.c \
	glib/gfileutils.c \
	glib/ghash.c \
	glib/ghmac.c \
	glib/ghook.c \
	glib/ghostutils.c \
	glib/giochannel.c \
	glib/gkeyfile.c \
	glib/glib-init.c \
	glib/glib-private.c \
	glib/glist.c \
	glib/gmain.c \
	glib/gmappedfile.c \
	glib/gmarkup.c \
	glib/gmem.c \
	glib/gmessages.c \
	glib/gnode.c \
	glib/goption.c \
	glib/gpattern.c \
	glib/gpoll.c \
	glib/gprimes.c \
	glib/gqsort.c \
	glib/gquark.c \
	glib/gqueue.c \
	glib/grand.c \
	glib/grcbox.c \
	glib/grefcount.c \
	glib/grefstring.c \
	glib/gregex.c \
	glib/gscanner.c \
	glib/gsequence.c \
	glib/gshell.c \
	glib/gslice.c \
	glib/gslist.c \
	glib/gstdio.c \
	glib/gstrfuncs.c \
	glib/gstring.c \
	glib/gstringchunk.c \
	glib/gtestutils.c \
	glib/gthread.c \
	glib/gthreadpool.c \
	glib/gtimer.c \
	glib/gtimezone.c \
	glib/gtranslit.c \
	glib/gtrashstack.c \
	glib/gtree.c \
	glib/guniprop.c \
	glib/gutf8.c \
	glib/gunibreak.c \
	glib/gunicollate.c \
	glib/gunidecomp.c \
	glib/gurifuncs.c \
	glib/gutils.c \
	glib/guuid.c \
	glib/gvariant.c \
	glib/gvariant-core.c \
	glib/gvariant-parser.c \
	glib/gvariant-serialiser.c \
	glib/gvarianttypeinfo.c \
	glib/gvarianttype.c \
	glib/gversion.c \
	glib/gwakeup.c \
	glib/gprintf.c \
	glib/glib-unix.c \
	glib/gspawn.c \
	glib/giounix.c \
	glib/gthread-posix.c

include $(CLEAR_VARS)
LOCAL_MODULE := libqemu-glib
LOCAL_SRC_FILES := $(GLIB_SRC_FILES)
LOCAL_CFLAGS := $(GLIB_COMMON_CFLAGS) -DLIBDIR=\"/system/lib\" -DGLIB_COMPILATION -DG_LOG_DOMAIN=\"GLib\"
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/android/$(QEMU_HOST_ARCH) \
	$(LOCAL_PATH)/android/$(QEMU_HOST_ARCH)/private \
	$(LOCAL_PATH)/glib
LOCAL_EXPORT_C_INCLUDE_DIRS := \
	$(LOCAL_PATH)/android/ \
	$(LOCAL_PATH)/android/$(QEMU_HOST_ARCH)
include $(BUILD_STATIC_LIBRARY)
