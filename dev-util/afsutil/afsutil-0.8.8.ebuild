# Distributed under the terms of the BSD License

EAPI=7
_PYTHON_ALLOW_PY27=1
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="OpenAFS build utility tool"
HOMEPAGE="https://github.com/openafs-contrib/afsutil"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
