# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake

DESCRIPTION="A header only library for creating and validating JSON Web Tokens in C++11."
HOMEPAGE="https://github.com/Thalhammer/jwt-cpp"
EGIT_REPO_URI="https://github.com/Thalhammer/jwt-cpp"
EGIT_CLONE_TYPE="shallow"
EGIT_COMMIT="v${PV}"
EGIT_SUBMODULES=()

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-libs/openssl"
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	local mycmakeargs=(
		-DBUILD_TESTS=OFF
	)

	cmake_src_configure
}

