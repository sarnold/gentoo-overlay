# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Find gadgets to build rop chains for different architectures"
HOMEPAGE="https://pypi.python.org/pypi/Ropper https://github.com/sashs/Ropper"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+semantic +keystone"
RESTRICT="mirror"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

RDEPEND="${DEPEND}
		 dev-python/filebytes[${PYTHON_USEDEP}]
		 keystone? ( dev-libs/keystone[${PYTHON_USEDEP}] )
		 semantic? ( dev-python/pyvex[${PYTHON_USEDEP}] sci-mathematics/z3[${PYTHON_USEDEP}] )"
