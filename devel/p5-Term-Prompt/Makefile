# $NetBSD: Makefile,v 1.10 2012/10/31 11:19:01 asau Exp $
#

DISTNAME=	Term-Prompt-1.04
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Term/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Term-Prompt/
COMMENT=	Perl extension for prompting a user for information

DEPENDS+=	p5-Text-Tabs+Wrap>=1.0:../../textproc/p5-Text-Tabs+Wrap
DEPENDS+=	p5-Term-ReadKey>=1.0:../../devel/p5-Term-ReadKey

PERL5_PACKLIST=		auto/Term/Prompt/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
