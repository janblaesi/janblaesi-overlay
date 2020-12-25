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
IUSE="+curl doc +pcsc srt"

DEPEND="curl? ( net-misc/curl )
	doc? ( app-doc/doxygen )
	doc? ( media-gfx/graphviz )
	pcsc? ( sys-apps/pcsc-lite )
	srt? ( net-libs/srt )
	dev-lang/python"
RDEPEND="${DEPEND}"
BDEPEND="app-text/dos2unix"

src_compile() {
	emake \
		NODTAPI=1 \
		$( if ! use srt; then echo "NOSRT=1"; fi ) \
		$( if ! use pcsc; then echo "NOPCSC=1"; fi )
}

src_install() {
	emake install SYSPREFIX="${D}"
}
