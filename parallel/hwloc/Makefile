# $NetBSD: Makefile,v 1.8 2012/10/17 03:36:14 asau Exp $

DISTNAME=	hwloc-1.5
CATEGORIES=	parallel
MASTER_SITES=	http://www.open-mpi.org/software/hwloc/v1.5/downloads/

MAINTAINER=	asau@inbox.ru
HOMEPAGE=	http://www.open-mpi.org/projects/hwloc/
COMMENT=	Portable Hardware Locality
LICENSE=	modified-bsd

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS=	pkg-config
USE_TOOLS+=	aclocal automake autoconf autoreconf

CONFIGURE_ARGS+=	--enable-debug --enable-picky

TEST_TARGET=	check

pre-configure:
	$(RUN) cd $(WRKSRC) && autoreconf -ivf

# libpci??
#.include "../../graphics/cairo/buildlink3.mk" # optional
.include "../../textproc/libxml2/buildlink3.mk" # optional
.include "../../mk/curses.buildlink3.mk" # optional
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
