# Distributed under the terms of the BSD License

EAPI=7
PYTHON_COMPAT=( python2_7 python3_{4,5,6,7} )

inherit distutils-r1

DESCRIPTION="Yaml Lint"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
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
        dev-python/pathspec
"
