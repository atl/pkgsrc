# $NetBSD: Makefile,v 1.28 2012/10/23 18:16:55 asau Exp $

DISTNAME=	qca-2.0.3
PKGNAME=	qca2-${DISTNAME:C/.*-//}
PKGREVISION=	10
CATEGORIES=	security
MASTER_SITES=	http://delta.affinix.com/download/qca/2.0/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://delta.affinix.com/qca/
COMMENT=	Cross-platform crypto API for QT
LICENSE=	gnu-lgpl-v2.1

USE_TOOLS+=	gmake
USE_LIBTOOL=	yes
HAS_CONFIGURE=	yes
USE_LANGUAGES=	c++
INSTALL_MAKE_FLAGS+=	INSTALL_ROOT=${DESTDIR:Q}

INSTALLATION_DIRS=	qt4/include qt4/lib qt4/plugins/crypto lib/pkgconfig

# install under qt4 prefix to not clash with qca 1.x
CONFIGURE_ARGS+=	--prefix=${QTDIR}
CONFIGURE_ARGS+=	--qtdir=${QTDIR}
CONFIGURE_ARGS+=	--disable-tests
CONFIGURE_ARGS+=	--certstore-internal
CONFIGURE_ARGS+=	--no-framework

post-install:
	${INSTALL_DATA} ${DESTDIR}${QTDIR}/lib/pkgconfig/qca2.pc ${DESTDIR}${PREFIX}/lib/pkgconfig/qca2.pc

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
