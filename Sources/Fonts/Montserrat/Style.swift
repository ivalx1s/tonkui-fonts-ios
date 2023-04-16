import SwiftUI

@available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11, *)
public extension Font.Montserrat {
	
	/// A StretchPro dynamic styles defined in accordance with Apple HIG.
	enum Style {
		case largeTitle
		case title
		case title2
		case title3
		case headline
		case subheadline
		case body
		case callout
		case footnote
		case caption
		case caption2
		
		
		internal var fontName: String {
			// ⚠️ Font name is part of its metadata, not file name
			// See "Family name" field in any font editor such as Glyphs or Font Book
			let baseName: String = "Montserrat"
			switch self {
				case .largeTitle:
					return "\(baseName)-Bold"
				case .title:
					return "\(baseName)-SemiBold"
				case .title2:
					return "\(baseName)-SemiBold"
				case .title3:
					return "\(baseName)-SemiBold"
				case .headline:
					return "\(baseName)-SemiBold"
				case .subheadline:
					return "\(baseName)-Medium"
				case .body:
					return "\(baseName)-Regular"
				case .callout:
					return "\(baseName)-SemiBold"
				case .footnote:
					return "\(baseName)-SemiBold"
				case .caption:
					return "\(baseName)-Regular"
				case .caption2:
					return "\(baseName)-Regular"
			}
		}
		
		internal var associatedSize: CGFloat {
			switch self {
				case .largeTitle:
					return 36
				case .title:
					return 28
				case .title2:
					return 20
				case .title3:
					return 18
				case .headline:
					return 16
				case .subheadline:
					return 14
				case .body:
					return 13
				case .callout:
					return 12
				case .footnote:
					return 12
				case .caption:
					return 10
				case .caption2:
					return 9
			}
		}
		
		internal var associatedStyle: Font.TextStyle {
			switch self {
				case .largeTitle:
					return .largeTitle
				case .title:
					return .title
				case .title2:
					return .title2
				case .title3:
					return .title3
				case .headline:
					return .headline
				case .subheadline:
					return .subheadline
				case .body:
					return .body
				case .callout:
					return .callout
				case .footnote:
					return .footnote
				case .caption:
					return .caption
				case .caption2:
					return .caption2
			}
		}
	}
}
