# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake

DESCRIPTION="The C++ REST SDK is a Microsoft project for cloud-based communication."
HOMEPAGE="https://github.com/microsoft/cpprestsdk"
EGIT_REPO_URI="https://github.com/microsoft/cpprestsdk"
EGIT_COMMIT="41e7d00"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-cpp/websocketpp"
RDEPEND="${DEPEND}"
BDEPEND=""

WORKDIR="Release"

src_configure() {
	local mycmakeargs=(
		-DBUILD_TESTS=OFF
		-DBUILD_SAMPLES=OFF
	)

	cmake_src_configure
}

