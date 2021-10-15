# Distributed under the terms of the BSD License

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} )
DISTUTILS_USE_SETUPTOOLS=rdepend
inherit distutils-r1


if [[ ${PV} == "9999" ]] ; then 
   EGIT_REPO_URI="https://github.com/meffie/virt-up.git"
   EGIT_REPO_BRANCH="master"
   inherit git-r3
else
   SRC_URI="https://github.com/meffie/virt-up/archive/v${PV}.tar.gz"
fi

DESCRIPTION="Front-end to virt-builder, virt-sysprep and virt-install"
HOMEPAGE="https://github.com/meffie/virt-up"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
