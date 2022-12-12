# Distributed under the terms of the BSD License

EAPI=7
PYTHON_COMPAT=( python2_7 python3_{8,9,10,11} )

inherit distutils-r1

DESCRIPTION="Utility library for gitignore style pattern matching of file paths"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MPL"
SLOT="0"
KEYWORDS="amd64"

COMMON_DEPEND="
        ${PYTHON_DEPS}
"
DEPEND="
        ${COMMON_DEPEND}
        dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="
        ${COMMON_DEPEND}
        dev-python/robotframework
"
