# $NetBSD: Makefile,v 1.26 2012/10/29 05:07:09 asau Exp $

.include "../../meta-pkgs/xfce4/Makefile.common"

XFCE4_VERSION=	2.6.0

DISTNAME=	gtk-xfce-engine-${XFCE4_VERSION}
PKGNAME=	xfce4-gtk2-engine-${XFCE4_VERSION}
PKGREVISION=	12
CATEGORIES=	x11
COMMENT=	Xfce GTK2 themes

MAKE_DIRS+=	${PREFIX}/share/themes/Xfce

.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
