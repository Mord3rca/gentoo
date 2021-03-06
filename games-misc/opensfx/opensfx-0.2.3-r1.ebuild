# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="OpenSFX data files for OpenTTD"
HOMEPAGE="http://bundles.openttdcoop.org/opensfx/"
SRC_URI="http://bundles.openttdcoop.org/${PN}/releases/${P}-source.tar.gz"

LICENSE="CC-Sampling-Plus-1.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ppc64 ~x86"
IUSE=""

DEPEND="games-util/catcodec"
RDEPEND=""

S=${WORKDIR}/${P}-source

src_install() {
	insinto "/usr/share/games/openttd/data/"
	doins opensfx.cat opensfx.obs
	dodoc docs/{changelog.txt,readme.ptxt}
}
