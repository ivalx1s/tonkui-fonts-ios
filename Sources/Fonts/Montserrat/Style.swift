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
					return "\(baseName)"
				case .title:
					return "\(baseName)"
				case .title2:
					return "\(baseName)"
				case .title3:
					return "\(baseName)"
				case .headline:
					return "\(baseName)"
				case .subheadline:
					return "\(baseName)"
				case .body:
					return "\(baseName)"
				case .callout:
					return "\(baseName)"
				case .footnote:
					return "\(baseName)"
				case .caption:
					return "\(baseName)"
				case .caption2:
					return "\(baseName)"
			}
		}
		
		internal var associatedSize: CGFloat {
			switch self {
				case .largeTitle:
					return 36
				case .title:
					return 28
				case .title2:
					return 22
				case .title3:
					return 20
				case .headline:
					return 16
				case .subheadline:
					return 15
				case .body:
					return 17
				case .callout:
					return 16
				case .footnote:
					return 15
				case .caption:
					return 14
				case .caption2:
					return 12
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
