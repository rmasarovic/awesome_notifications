import Flutter

/// Objective-C visible entry point registered by Flutter through the
/// `pluginClass: AwesomeNotificationsPlugin` declaration in `pubspec.yaml`.
///
/// Swift Package Manager targets cannot mix Objective-C and Swift, so the
/// previous Objective-C shim (`AwesomeNotificationsPlugin.h/.m`) is replaced
/// by this pure-Swift class. It simply forwards registration to
/// `SwiftAwesomeNotificationsPlugin`, which holds the actual implementation
/// and remains the public API used by `setPluginRegistrantCallback`.
public class AwesomeNotificationsPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        SwiftAwesomeNotificationsPlugin.register(with: registrar)
    }
}
