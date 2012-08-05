# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

PYTHON_DEPEND="2"

inherit flag-o-matic autotools eutils git-2 python

DESCRIPTION="Open Lighting Architecture"
HOMEPAGE="http://code.google.com/p/linux-lighting/"
EGIT_REPO_URI="https://code.google.com/p/open-lighting/"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS=""
IUSE="python webserver examples"

DEPEND="	dev-libs/protobuf[python]
		dev-util/cppunit
		webserver? ( net-libs/libmicrohttpd )"
RDEPEND="${DEPEND}"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}

src_prepare() {
        eautoreconf
}

src_configure() {
	econf	--prefix=/usr \
		--disable-fatal-warnings \
		$(use_enable python python-libs) \
		$(use_enable webserver http) \
		$(use_enable examples)

		append-ldflags $(no-as-needed)
}

src_compile() {
	emake || die "emake failed"
}