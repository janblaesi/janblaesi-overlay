# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Wofi is a launcher/menu program for wlroots based wayland compositors"
HOMEPAGE="https://hg.sr.ht/~scoopta/wofi"

EHG_REPO_URL="${HOMEPAGE}"
EHG_REVISION="v${PV}"

inherit mercurial meson

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="dev-libs/wayland
	x11-libs/gtk+[wayland]"
RDEPEND="${DEPEND}"
BDEPEND="virtual/pkgconfig"
