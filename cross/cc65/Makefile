# $NetBSD: Makefile,v 1.7 2012/12/03 14:36:39 wen Exp $
#

DISTNAME=	cc65-sources-2.13.3
PKGNAME=	${DISTNAME:S/-sources//}
CATEGORIES=	cross lang
MASTER_SITES=	ftp://ftp.musoftware.de/pub/uz/cc65/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.cc65.org/
COMMENT=	C cross compiler for 6502 target systems

MAKE_JOBS_SAFE=		no

WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}
MAKE_FILE=	make/gcc.mak
USE_TOOLS+=	gmake perl
REPLACE_PERL=	src/ca65html/ca65html

INSTALL_MAKE_FLAGS+=	PREFIX=${DESTDIR}${PREFIX}

SUBST_CLASSES+=		perl
SUBST_MESSAGE.perl=	Fixing the path of perl.
SUBST_STAGE.perl=	post-patch
SUBST_FILES.perl=	src/ca65/macpack/cvt-mac.pl src/ld65/cfg/cvt-cfg.pl
SUBST_SED.perl=		-e "s,/usr/bin/perl,${PREFIX}/bin/perl,g"

.include "../../mk/bsd.pkg.mk"
