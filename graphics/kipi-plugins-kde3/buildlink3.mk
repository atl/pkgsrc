# $NetBSD: buildlink3.mk,v 1.2 2012/03/31 23:46:50 dholland Exp $

BUILDLINK_TREE+=	kipi-plugins

.if !defined(KIPI_PLUGINS_BUILDLINK3_MK)
KIPI_PLUGINS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.kipi-plugins+=	kipi-plugins>=0.1.4nb6<1.1.0
BUILDLINK_PKGSRCDIR.kipi-plugins?=	../../graphics/kipi-plugins-kde3
.endif # KIPI_PLUGINS_BUILDLINK3_MK

BUILDLINK_TREE+=	-kipi-plugins
