# $NetBSD: Makefile,v 1.4 2012/10/25 06:57:00 asau Exp $

DISTNAME=	shared-desktop-ontologies-0.7.0
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=oscaf/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	markd@NetBSD.org
HOMEPAGE=	http://oscaf.sourceforge.net
COMMENT=	Ontologies for Semantic Desktop
#LICENSE=	modified-bsd

# BUILD_MAKE_FLAGS+= VERBOSE=1

USE_LANGUAGES=	c c++
USE_CMAKE=	yes

PKGCONFIG_OVERRIDE+=	shared-desktop-ontologies.pc.cmake

.include "../../mk/bsd.pkg.mk"
