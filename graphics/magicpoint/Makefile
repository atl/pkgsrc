# $NetBSD: Makefile,v 1.80 2012/10/23 10:24:06 wiz Exp $

DISTNAME=		magicpoint-1.13a
PKGREVISION=		11
CATEGORIES=		x11 graphics
MASTER_SITES=		ftp://sh.wide.ad.jp/WIDE/free-ware/mgp/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://member.wide.ad.jp/wg/mgp/
COMMENT=		X11 based presentation tool
LICENSE=		modified-bsd

CONFLICTS=		mgp-[0-9]*

GNU_CONFIGURE=		yes
USE_IMAKE=		yes
USE_LANGUAGES+=		c99
USE_TOOLS+=		perl
USE_TOOLS+=		pkg-config

CONFIGURE_ARGS+=	--enable-freetype-charset16
CONFIGURE_ARGS+=	--enable-locale
CONFIGURE_ARGS+=	--enable-gif
CONFIGURE_ARGS+=	--with-searchpath=${BUILDLINK_DIR:Q}
CONFIGURE_ENV+=		BUILDLINK_DIR=${BUILDLINK_DIR:Q}
CONFIGURE_ENV+=		mgp_cv_path_perl=${TOOLS_PERL5:Q}

DOCDIR=			share/doc/mgp
EGDIR=			share/examples/mgp
INSTALLATION_DIRS+=	${DOCDIR} ${EGDIR}

DOCS=			COPYRIGHT COPYRIGHT.jp FAQ README README.fonts	\
			README.fonts.jp README.lang SYNTAX USAGE USAGE.jp
EXAMPLES=		README README.jp cloud.jpg dad.eps dad.jpg \
			default.mgp embed-jp.mgp embed.mgp gradation-jp.mgp \
			gradation.mgp m17n-lib.mgp mgp-old1.jpg mgp-old2.jpg \
			mgp-old3.jpg mgp1.jpg mgp2.jpg mgp3.jpg mgp3.xbm \
			mgprc-sample multilingual.mgp sample-fr.mgp \
			sample-jp-xft.mgp sample-jp.mgp sample.mgp \
			sendmail6-jp.mgp sendmail6.mgp tutorial-jp.mgp \
			tutorial.mgp v6-jp.mgp v6.mgp v6header.eps v6header.jpg

# We need to perform the steps normally done by ``xmkmf -a'' since some
# files need to be created before ``make depend''.
#
XMKMF=			${XMKMF_CMD} ${XMKMF_FLAGS}

MGP_PRE_STAGE=		ctlwords.h grammar.c scanner.c tokdefs.h \
			Makefiles includes depend

.include "options.mk"

SUBST_CLASSES+=		conf
SUBST_FILES.conf+=	sample/default.mgp
SUBST_SED.conf+=	-e 's|@MGP_TFONT@|${MGP_TFONT}|g'
SUBST_SED.conf+=	-e 's|@MGP_VFONT@|${MGP_VFONT}|g'
SUBST_SED.conf+=	-e 's|@MGP_XFONT@|${MGP_XFONT}|g'
SUBST_STAGE.conf=	post-configure

post-configure:
.for s in ${MGP_PRE_STAGE}
	cd ${WRKSRC}; \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} ${s}
.endfor

post-install:
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DESTDIR}${PREFIX}/${DOCDIR}
.endfor
.for f in ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/sample/${f} ${DESTDIR}${PREFIX}/${EGDIR}
.endfor

.include "../../mk/giflib.buildlink3.mk"
.include "../../graphics/mng/buildlink3.mk"
.include "../../graphics/netpbm/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
