# Distributed under the terms of the BSD License

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8} )

inherit distutils-r1

DESCRIPTION="Front-end to virt-builder, virt-sysprep and virt-install"
HOMEPAGE="https://github.com/meffie/virt-up"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
