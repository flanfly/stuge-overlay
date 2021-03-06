# Copyright 2013 Peter Stuge

EAPI="4"
PYTHON_DEPEND="2:2.6"
SUPPORT_PYTHON_ABIS=1
RESTRICT_PYTHON_ABIS="2.[45]"

inherit distutils git-2

DESCRIPTION="libgit2 bindings in Python"
HOMEPAGE="https://github.com/libgit2/pygit2"
EGIT_REPO_URI="git://github.com/libgit2/pygit2.git"
SRC_URI=""

LICENSE="GPL-2-with-linking-exception"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="dev-libs/libgit2"
