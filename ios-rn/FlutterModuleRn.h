
#ifdef RCT_NEW_ARCH_ENABLED
#import "RNFlutterModuleRnSpec.h"

@interface FlutterModuleRn : NSObject <NativeFlutterModuleRnSpec>
#else
#import <React/RCTBridgeModule.h>

@interface FlutterModuleRn : NSObject <RCTBridgeModule>
#endif

@end
