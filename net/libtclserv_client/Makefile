# robotpkg Makefile for:	net/libtclserv_client
# Created:			Arnaud Degroote on Sun, 22 Aug 2010
#
DISTNAME=	libtclserv_client-0.5
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=libtclserv_client/}
MASTER_REPOSITORY= ${MASTER_REPOSITORY_OPENROBOTS_TRAC}${PKGBASE}
PKGREVISION=	1

MAINTAINER=	adegroot@laas.fr
COMMENT=	Run-time for GeNoM module tclserv client
LICENSE=    2-clause-bsd

GNU_CONFIGURE=	yes

include ../../pkgtools/pkg-config/depend.mk
include ../../pkgtools/libtool/depend.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
