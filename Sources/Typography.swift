import Foundation
import CoreGraphics
import CoreText
import SwiftUI
import os.log

internal let bundle = Bundle.module

// MARK: - Typography registration
@available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11, *)
public func registerTonkFonts() {
    let startT = Date().timeIntervalSince1970 * 1000
    os_signpost(.begin, log: performanceOSLog, name: "font registration")
    for font in tonk_fonts {
        guard let fontLocation = bundle.path(forResource: "\(font)", ofType: "ttf") else {
            fatalError("\(font) Could not locate font file")
        }
        guard let fontData = NSData(contentsOfFile: fontLocation) else {
            fatalError("[UIFont] Could not get data of font")
        }

        guard let dataProvider = CGDataProvider(data: fontData) else {
            fatalError("[UIFont] Could not get dataprovider of font")
        }

        guard let fontRef = CGFont(dataProvider) else {
            fatalError("[UIFont] Could not create font")
        }

        var errorRef: Unmanaged<CFError>?
        if CTFontManagerRegisterGraphicsFont(fontRef, &errorRef) == false {
            fatalError("[UIFont] Could not register font")
        }
    }
    let endT = Date().timeIntervalSince1970 * 1000
    performanceLogger.info(
       "\("", align: .left(columns: 0), privacy: .public) \("Font registration took \(Int(endT-startT))ms", align: .left(columns: 30), privacy: .public)"
    )
    os_signpost(.end, log: performanceOSLog, name: "font registration")
}

// MARK: - Point of use definitions
@available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11, *)
public extension Font {
    
    /// A Montserrat dynamic font for use within Tonkeeper project.
    ///
    ///   - Parameter style: a dynamic font style
    @available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11, *)
    static func montserrat(_ style: Montserrat.Style) -> Font {
        .custom(style.fontName, size: style.associatedSize, relativeTo: style.associatedStyle)
    }
    
    
    /// Create a Montserrat font with the given size that scales with the body text style.
    @available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11, *)
    static func montserrat(size: CGFloat) -> Font {
        let style: Montserrat.Style = .body
        return .custom(style.fontName, size: size)
    }
    
    
    /// Create a Montserrat font with the given fixed size that does not scale with Dynamic Type.
    @available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11, *)
    static func montserrat(fixedSize size: CGFloat) -> Font {
        let style: Montserrat.Style = .body // we just need the name of font
        return .custom(style.fontName, fixedSize: size)
    }
}


// MARK: - Internal implementations

@available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11, *)
public extension Font {
    /// The Montserrat font for use within dynamic font contexts;
    enum Montserrat {}
}


