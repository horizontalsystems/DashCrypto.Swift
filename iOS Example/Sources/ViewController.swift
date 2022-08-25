import UIKit
import BlsKit
import X11Kit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Testing BLS verify:")

        let publicKey = Data(hex: "141d89e211c93bee9f4cb26e4bd1fa530798dc1cc27e545c0e096aec9d913ba2cae572b339aaab612a0bb2f60dd71ceb")
        let sign = Data(hex: "0cace6526d0f27e7b969700877796fce5d0a441281d952197eee051385b22c7b9010981cecd19986fc185aa65ac8d82b0c8ba2e0f2cab703f4cd9c3079cc53b78d947bc6d8cc6b05f87fcffea778a05df53f0340d6d0c4f9de182016df8452fe")
        
        let message = Data(hex: "764ffc3658c9e40ebed871d60eb92add480d437973d59038c37d6e55dda35461")
        
        print(BlsKit.verify(message, publicKey: publicKey, signature: sign))
        print("=============================================")

        let data = Data(hex: "020000002cc0081be5039a54b686d24d5d8747ee9770d9973ec1ace02e5c0500000000008d7139724b11c52995db4370284c998b9114154b120ad3486f1a360a1d4253d310d40e55b8f70a1be8e32300")
        let hash = Data(hex: "f29c0f286fd8071669286c6987eb941181134ff5f3978bf89f34070000000000")
        print("Testing X11:")
        print(X11Kit.x11(data) == hash)
    }

}

extension Data {

    init(hex: String) {
        let len = hex.count / 2
        var data = Data(capacity: len)
        for i in 0..<len {
            let j = hex.index(hex.startIndex, offsetBy: i * 2)
            let k = hex.index(j, offsetBy: 2)
            let bytes = hex[j..<k]
            if var num = UInt8(bytes, radix: 16) {
                data.append(&num, count: 1)
            } else {
                self = data
                return
            }
        }
        self = data
    }

}
