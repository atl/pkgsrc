# $NetBSD: Makefile,v 1.3 2012/10/31 11:18:34 asau Exp $
#

DISTNAME=	MooseX-Aliases-0.10
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MooseX/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/MooseX-Aliases/
COMMENT=	Easy aliasing of methods and attributes in Moose
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Moose>=1.09:../../devel/p5-Moose

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/MooseX/Aliases/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
