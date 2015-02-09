# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils unpacker

DESCRIPTION="Wallpapers set taken from the Antergos repos"
HOMEPAGE=""
SRC_URI="
	x86? ( "http://repo.antergos.info/antergos/i686/${P}-2-any.pkg.tar.xz" )
	amd64? ( "http://repo.antergos.info/antergos/x86_64/${P}-2-any.pkg.tar.xz" )
"

LICENSE="CCPL:by-nc-sa"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_unpack(){
	unpack "${A}"
}

src_install(){
	insinto /
	doins -r usr
}