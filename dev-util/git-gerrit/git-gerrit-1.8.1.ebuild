# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

PYTHON_COMPAT=(python3_{5,6,7} pypy pypy3 )

inherit distutils-r1
MY_PN="${PN/-/_}"
MY_P="${MY_PN}-${PVR}"
S="${WORKDIR}/${MY_P}"
DESCRIPTION="Gerrit review system command line tools."
HOMEPAGE="https://github.com/meffie/git-gerrit https://pypi.org/project/git-gerrit/"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
        dev-python/pygerrit2
        "
DEPEND="${REDEPEND}
        dev-python/setuptools[${PYTHON_USEDEP}]
        test? (
                dev-python/nose[${PYTHON_USEDEP}]
                dev-python/pytest[${PYTHON_USEDEP}]
        )"

python_test() {
        nosetests --verbose || die
        py.test -v -v || die
}
