# $NetBSD: Makefile,v 1.11 2012/10/23 19:51:18 asau Exp $
#

DISTNAME=	Sys-Filesystem-1.30
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	sysutils devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Sys/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Sys-Filesystem/
COMMENT=	Retrieve list of filesystems and their properties
LICENSE=	apache-2.0

DEPENDS+=	{perl>=5.10.1,p5-Module-Pluggable>=3.9}:../../devel/p5-Module-Pluggable
DEPENDS+=	p5-Params-Util>=1.00:../../devel/p5-Params-Util

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/Sys/Filesystem/.packlist
PERL5_MODULE_TYPE=	Module::Build

#pre-configure:
#	${FIND} ${WRKSRC} -name '*.orig' -print -type f | ${XARGS} ${RM} -f

CONFIGURE_ENV+=		PATH_FSTAB=${WRKDIR}/fstab.phony

pre-configure:
	${TOUCH} ${WRKDIR}/fstab.phony

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
