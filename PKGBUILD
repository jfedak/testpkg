# Maintainer: Jakub Fedak <jakubfedak1030@gmail.com>
pkgname=testkuba
pkgver=1.0
pkgrel=1
pkgdesc="Test package"
arch=('any')
url="https://github.com/jfedak/testpkg"
license=('GPL')
depends=('python')
source=("testkuba::git://github.com/jfedak/testpkg.git")
md5sums=("SKIP")

package() {
   cd "testkuba"
   make DESTDIR="${pkgdir}" PREFIX=/usr install
}