# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=8

PYTHON_COMPAT=(python3_{10,11} pypy pypy3 )

inherit distutils-r1 pypi
DESCRIPTION="Gerrit review system command line tools."
HOMEPAGE="https://github.com/meffie/git-gerrit https://pypi.org/project/git-gerrit/"
SRC_URI="$(pypi_sdist_url "${PN^}" "${PV}")"
S=${WORKDIR}/${P^}

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
