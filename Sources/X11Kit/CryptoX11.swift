import Foundation
import X11_implementation

public struct X11Kit {

    static public func x11(_ data: Data) -> Data {
        CryptoX11Hash.x11(data)
    }

    static public func blake512(_ data: Data) -> Data {
        CryptoX11Hash.blake512(data)
    }

    static public func bmw512(_ data: Data) -> Data {
        CryptoX11Hash.bmw512(data)
    }

    static public func groestl512(_ data: Data) -> Data {
        CryptoX11Hash.groestl512(data)
    }

    static public func skein512(_ data: Data) -> Data {
        CryptoX11Hash.skein512(data)
    }

    static public func jh512(_ data: Data) -> Data {
        CryptoX11Hash.jh512(data)
    }

    static public func keccak512(_ data: Data) -> Data {
        CryptoX11Hash.keccak512(data)
    }

    static public func luffa512(_ data: Data) -> Data {
        CryptoX11Hash.luffa512(data)
    }

    static public func cubehash512(_ data: Data) -> Data {
        CryptoX11Hash.cubehash512(data)
    }

    static public func shavite512(_ data: Data) -> Data {
        CryptoX11Hash.shavite512(data)
    }

    static public func simd512(_ data: Data) -> Data {
        CryptoX11Hash.simd512(data)
    }

    static public func echo512(_ data: Data) -> Data {
        CryptoX11Hash.echo512(data)
    }

}
