# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

#PYTHON_COMPAT=( python2_7 python3_{5,6,7} pypy pypy3 )
PYTHON_COMPAT=( python3_{5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Client library for interacting with Gerrit's REST API"
HOMEPAGE="https://github.com/dpursehouse/pygerrit2 https://pypi.org/project/pygerrit2/"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="The MIT License"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="test"

RDEPEND="
        >=dev-python/pbr-0.8.0
        >=dev-python/requests-2.20.0
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
