# $NetBSD: Makefile,v 1.18 2012/10/31 11:18:16 asau Exp $

DISTNAME=	Getopt-Simple-1.52
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Getopt/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	gdt@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Getopt-Simple/
COMMENT=	Simple Getopt wrapper
LICENSE=	artistic

USE_TOOLS+=	perl

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/Getopt/Simple/.packlist
PERL5_MODULE_TYPE=	Module::Build

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
