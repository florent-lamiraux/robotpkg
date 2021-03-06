# robotpkg depend.mk for:	hardware/libftdi
# Created:			Matthieu Herrb on Thu, 2 Apr 2009
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBFTDI_DEPEND_MK:=${LIBFTDI_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libftdi
endif

ifeq (+,$(LIBFTDI_DEPEND_MK))
PREFER.libftdi?=	system

DEPEND_USE+=		libftdi

DEPEND_ABI.libftdi?=	libftdi>=0.14
DEPEND_DIR.libftdi?=	../../hardware/libftdi

SYSTEM_PKG.Fedora.libftdi=libftdi-devel
SYSTEM_PKG.Ubuntu.libftdi=libftdi-dev
SYSTEM_PKG.NetBSD.libftdi=devel/libftdi

SYSTEM_SEARCH.libftdi=\
	'include/{,libftdi1/}ftdi.h' \
	'lib/pkgconfig/libftdi{,1}.pc:/Version/s/[^0-9.]//gp'
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
