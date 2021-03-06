# robotpkg sysdep/ccache.mk
# Created:			Anthony Mallet on Sat Nov 28 2009
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
CCACHE_DEPEND_MK:=	${CCACHE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ccache
endif

ifeq (+,$(CCACHE_DEPEND_MK)) # ---------------------------------------------

PREFER.ccache?=		system

DEPEND_USE+=		ccache
DEPEND_ABI.ccache?=	ccache>=2
DEPEND_METHOD.ccache+=	build
SYSTEM_SEARCH.ccache=	'bin/ccache:/version/s/[^.0-9]//gp:% -V'

export CCACHE=		${PREFIX.ccache}/bin/ccache

# define a reasonable default for CCACHE_DIR, because $HOME actually points to
# $WRKDIR buring the build and this is a bit pointless for a cache.
CCACHE_DIR?=		${HOME}/.ccache
export CCACHE_DIR

# Log ccache, so that problems can be tracked down
CCACHE_LOGFILE?=  ${WRKDIR}/ccache.log
export CCACHE_LOGFILE

endif # CCACHE_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
