# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=(python3_4 python3_5 python3_6)
inherit eutils git-r3 python-any-r1

DESCRIPTION="Tools for Lattice iCE40 FPGAs"
HOMEPAGE="http://www.clifford.at/icestorm/"
EGIT_REPO_URI="https://github.com/cliffordwolf/icestorm.git"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-embedded/libftdi:*"
DEPEND="virtual/pkgconfig
		${PYTHON_DEPS}
		${RDEPEND}"

src_prepare() {
	default
	epatch "${FILESDIR}/chipdb-location.patch"
	epatch "${FILESDIR}/iceprog-libdir.patch"
}

src_install() {
	emake PREFIX=/usr DESTDIR="${D}" install
}
