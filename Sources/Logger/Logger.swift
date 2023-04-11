import os.log

@available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11, *)
internal let performanceOSLog = OSLog(subsystem: bundle.bundleIdentifier!, category: "🎭 Performance")

@available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11, *)
internal let performanceLogger = os.Logger.init(subsystem: bundle.bundleIdentifier!, category: "🎭 Performance")
