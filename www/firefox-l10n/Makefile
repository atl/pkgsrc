# $NetBSD: Makefile,v 1.22 2012/12/05 12:07:23 ryoon Exp $
#

FIREFOX_VER=	17.0.1esr
PKGNAME=	firefox-l10n-${FIREFOX_VER:S/esr//}
DISTNAME=	# empty
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_MOZILLA_ESR:=firefox/releases/${FIREFOX_VER}/linux-i686/xpi/}

MAINTAINER=	tnn@NetBSD.org
HOMEPAGE=	http://www.mozilla.com/en-US/firefox/
COMMENT=	Language packs for www/firefox

DIST_SUBDIR=	${PKGNAME_NOREV}
DISTFILES=	${XPI_FILES}

NO_BUILD=	yes

FIREFOX_LOCALES=af ak ar as ast be bg bn-BD bn-IN br bs ca cs csb cy da	\
		de el en-GB en-US en-ZA eo es-AR es-CL es-ES es-MX et	\
		eu fa fi fr fy-NL ga-IE gd gl gu-IN he hi-IN hr hu	\
		hy-AM id is it ja kk kn ko ku lg lt lv mai mk ml mr	\
		nb-NO nl nn-NO nso or pa-IN pl pt-BR pt-PT rm ro ru	\
		si sk sl son sq sr sv-SE ta-LK ta te th tr uk vi	\
		zh-CN zh-TW zu

EXTENSIONS_DIR=		${PREFIX}/lib/firefox/extensions
XPI_FILES=		${FIREFOX_LOCALES:=.xpi}

.include "../../devel/xulrunner/xpi.mk"
.include "../../mk/bsd.pkg.mk"
