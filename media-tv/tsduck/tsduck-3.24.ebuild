# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PV="${PV}-2109"
MY_P="${PN}-${MY_PV}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="TSDuck is an extensible toolkit for MPEG Transport Streams"
HOMEPAGE="https://tsduck.io"
SRC_URI="https://github.com/tsduck/tsduck/archive/v${MY_PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="sys-devel/gcc
	app-test/dos2unix
	net-misc/curl
	app-arch/tar
	app-arch/zip
	app-arch/unzip
	app-doc/doxygen
	media-gfx/graphviz
	sys-apps/pcsc-lite
	net-libs/srt
	dev-lang/python"
RDEPEND="${DEPEND}"
BDEPEND=""

