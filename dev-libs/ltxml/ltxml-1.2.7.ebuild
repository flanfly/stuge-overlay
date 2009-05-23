# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/ltxml/ltxml-1.2.6.ebuild,v 1.5 2008/01/02 10:56:32 armin76 Exp $

S="${WORKDIR}/${P}/XML"
DESCRIPTION="Integrated set of XML tools and a developers tool-kit with C API"
HOMEPAGE="http://www.ltg.ed.ac.uk/software/xml/"
SRC_URI=ftp://ftp.cogsci.ed.ac.uk/pub/LTXML/${P}.tar.gz
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND="dev-lang/perl"
PV_MAJ="${PV:0:1}${PV:2:1}"

src_compile() {
	econf || die "configure failed"
	emake all || die "make failed"
}

src_install() {
	einstall \
		datadir=${D}/usr/lib/${PN}${PV_MAJ} \
		MANDIR=${D}/usr/share/man \
		|| die "make install failed"
}
