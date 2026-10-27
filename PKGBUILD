pkgname=ffmpeg-minimal
pkgver=1.0.0
pkgrel=1
pkgdesc="Video Encoder using FFMPEG with minimal GUI"
arch=('any')
license=('MIT')
depends=('ffmpeg' 'bash' 'fzf' 'awk')
source=('ffmpeg-minimal.sh' 'ffmpeg-minimal.desktop')
sha256sums=('e6b68d00dbd7bf755444e4a2d96641da50ed66725619addb7be3387167b457bc'
            '6198ce4971dba175ec01aed94022209f62dc4ab7b94a0ab061845da4217b0bf4')

package() {
    install -Dm755 ffmpeg-minimal.sh "$pkgdir/usr/bin/ffmpeg-minimal"
    install -Dm644 ffmpeg-minimal.desktop "$pkgdir/usr/share/applications/ffmpeg-minimal.desktop"
}
