# $NetBSD: Makefile,v 1.12 2012/10/25 06:56:01 asau Exp $

DISTNAME=	sed-3.02
PKGNAME=	ja-sed-3.02
PKGREVISION=	2
CATEGORIES=	japanese textproc
MASTER_SITES=	${MASTER_SITE_GNU:=sed/}

PATCH_SITES=	http://www.hinadori.atnifty.com/~wills/program/
PATCHFILES=	sedmb109.diff.gz
PATCH_DIST_STRIP=	-p1

MAINTAINER=	tech-pkg-ja@jp.NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/sed/sed.html
COMMENT=	GNU sed + multi-byte extension

CONFLICTS+=	gsed-[0-9]*

USE_TOOLS+=	gmake
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--program-transform-name='s,^,j,'
INFO_FILES=	# PLIST

INSTALLATION_DIRS=	share/doc/ja-sed

post-install:
	@${INSTALL_DATA} ${WRKSRC}/OREADME.MB ${DESTDIR}${PREFIX}/share/doc/ja-sed
	@${INSTALL_DATA} ${WRKSRC}/README.MB ${DESTDIR}${PREFIX}/share/doc/ja-sed

.include "../../mk/bsd.pkg.mk"
