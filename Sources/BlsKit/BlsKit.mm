#import "BlsKit.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"
#import "bls.hpp"
#pragma clang diagnostic pop

@implementation BlsKit

+ (BOOL)verify:(NSData *)messageDigest publicKey:(NSData *)publicKeyData signature:(NSData *)signature {
    if (messageDigest.length < 32 || publicKeyData.length < 48 || signature.length < 96) {
        // wrong data, when try make pointers on vars catch fatal error
        return false;
    }
    
    using namespace bls;

    const uint8_t *pubKey = (const uint8_t*)[publicKeyData bytes];
    const uint8_t *sign = (const uint8_t*)[signature bytes];
    const uint8_t *message = (const uint8_t*)[messageDigest bytes];

    G1Element pkElement = G1Element::FromBytes(Bytes(pubKey, publicKeyData.length), true);
    G2Element signElement = G2Element::FromBytes(Bytes(sign, signature.length), true);

    return LegacySchemeMPL().Verify(pkElement, Bytes(message, messageDigest.length), signElement);
}

@end
