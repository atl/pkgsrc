# $NetBSD: Makefile,v 1.26 2012/10/03 22:14:02 wiz Exp $
#

DISTNAME=		tables-2.2.1
PKGNAME=		${PYPKGPREFIX}-pytables-2.2.1
PKGREVISION=		1
CATEGORIES=		math python
MASTER_SITES=		http://www.pytables.org/download/pytables-2.2.1/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.pytables.org/
COMMENT=		Database package for large amounts of data

PKG_OPTIONS_VAR=	PKG_OPTIONS.pytables
PKG_SUPPORTED_OPTIONS=	lzo
PKG_SUGGESTED_OPTIONS=
.include "../../mk/bsd.options.mk"

PYDISTUTILSPKG=		yes
PYSETUPBUILDARGS=	--hdf5=${BUILDLINK_PREFIX.hdf5}
.if !empty(PKG_OPTIONS:Mlzo)
PYSETUPBUILDARGS+=	--lzo=${BUILDLINK_PREFIX.lzo}
.include "../../archivers/lzo/buildlink3.mk"
.endif
PYSETUPINSTALLARGS=	${PYSETUPBUILDARGS}
PLIST_SUBST+=		PYVERSSUFFIX=${PYVERSSUFFIX:Q}

post-extract:
	cd ${WRKSRC}/utils; \
	${MV} ptdump ptdump${PYVERSSUFFIX}; \
	${MV} ptrepack ptrepack${PYVERSSUFFIX}; \
	${MV} nctoh5 nctoh5${PYVERSSUFFIX}

do-test:
	(cd ${WRKSRC}/tables/tests && ${PYTHONBIN} test_all.py)

.include "../../lang/python/extension.mk"
.include "../../devel/hdf5/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../archivers/bzip2/buildlink3.mk"
.include "../../math/py-numpy/buildlink3.mk"
BUILDLINK_API_DEPENDS.pycython+= ${PYPKGPREFIX}-cython>=0.13
.include "../../devel/py-cython/buildlink3.mk"
.include "../../math/py-numexpr/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
