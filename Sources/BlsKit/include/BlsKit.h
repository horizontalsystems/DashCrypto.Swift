#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlsKit: NSObject

+ (BOOL)verify:(NSData *)messageDigest publicKey:(NSData *)publicKeyData signature:(NSData *)signature;

@end

NS_ASSUME_NONNULL_END
