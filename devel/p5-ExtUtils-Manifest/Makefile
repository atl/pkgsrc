# $NetBSD: Makefile,v 1.9 2012/10/31 11:18:07 asau Exp $

DISTNAME=	ExtUtils-Manifest-1.60
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/F/FL/FLORA/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/ExtUtils-Manifest/
COMMENT=	Perl utilities to write and check a MANIFEST file
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/ExtUtils/Manifest/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
