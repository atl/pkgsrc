# $NetBSD: Makefile,v 1.7 2012/10/08 13:04:22 asau Exp $

DISTNAME=		DateTime-Event-Recurrence-0.16
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		4
CATEGORIES=		time perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=DateTime/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/DateTime-Event-Recurrence
COMMENT=		DateTime::Set extension to create basic recurrence sets

PKG_INSTALLATION_TYPES=	overwrite pkgviews

DEPENDS+=		p5-DateTime-Set>=0.17:../../time/p5-DateTime-Set

PERL5_PACKLIST=		auto/DateTime/Event/Recurrence/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
