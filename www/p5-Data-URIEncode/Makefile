# $NetBSD: Makefile,v 1.5 2012/10/28 06:30:35 asau Exp $

DISTNAME=	Data-URIEncode-0.11
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Data/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Data-URIEncode/
COMMENT=	Allow complex data structures to be encoded using flat URIs
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=	auto/Data/URIEncode/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
