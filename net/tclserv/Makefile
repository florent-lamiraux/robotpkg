# robotpkg Makefile for:	net/tclserv
# Created:			Anthony Mallet on Fri, 22 Apr 2011
#

DISTNAME=		tclserv-2.8.2
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=tclserv/}
MASTER_REPOSITORY=	git git://git.openrobots.org/robots/genom2/tclserv.git

CATEGORIES=		net
MAINTAINER=		openrobots@laas.fr
HOMEPAGE=		https://git.openrobots.org/projects/tclserv
COMMENT=		Request and poster server for pocolibs GenoM modules

LICENSE=		2-clause-bsd
CONFLICTS+=		genom<2.7
NOT_FOR_PLATFORM=	# empty
GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--with-tcl=$(dir ${TCL_CONFIG_SH})

include ../../pkgtools/pkg-config/depend.mk
include ../../middleware/pocolibs/depend.mk
include ../../mk/sysdep/tcl.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
