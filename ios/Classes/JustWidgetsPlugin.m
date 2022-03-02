#import "JustWidgetsPlugin.h"
#if __has_include(<just_widgets/just_widgets-Swift.h>)
#import <just_widgets/just_widgets-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "just_widgets-Swift.h"
#endif

@implementation JustWidgetsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftJustWidgetsPlugin registerWithRegistrar:registrar];
}
@end
