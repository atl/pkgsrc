# $NetBSD: Makefile,v 1.30 2012/10/06 14:11:01 asau Exp $

DISTNAME=	jhead-2.96
CATEGORIES=	graphics
MASTER_SITES=	http://www.sentex.net/~mwandel/jhead/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.sentex.net/~mwandel/jhead/
COMMENT=	Extract EXIF header from JPEG image
LICENSE=	public-domain

PKG_INSTALLATION_TYPES=	overwrite pkgviews

MAKE_FILE=	makefile

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 share/doc/html/jhead

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jhead ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/jhead.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/usage.html \
		${DESTDIR}${PREFIX}/share/doc/html/jhead

.include "../../mk/bsd.pkg.mk"
