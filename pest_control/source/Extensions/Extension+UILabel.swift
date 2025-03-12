//
//  Extension+UILabel.swift
//  pest_control
//
//  Created by Muhammad Haroon Iqbal on 09/03/2025.
//

import Foundation
import UIKit

extension UILabel {
    
    func underline() {
        if let textString = self.text {
            let attributedString = NSMutableAttributedString(string: textString)
            attributedString.addAttribute(NSAttributedString.Key.underlineStyle,
                                          value: NSUnderlineStyle.single.rawValue,
                                          range: NSRange(location: 0, length: attributedString.length))
            attributedText = attributedString
        }
    }
    
    func setTextWithLineSpacing(lineHeightMultiply: CGFloat = 1.3) {
        if let textString = self.text {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineHeightMultiple = lineHeightMultiply
            paragraphStyle.alignment = .center
            let attributedString = NSMutableAttributedString(string: textString)
            attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: attributedString.length))
            self.attributedText = attributedString
        }
    }
    
    func underlineAndLineHeight(lineHeightMultiply: CGFloat = 2) {
        if let textString = self.text {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineHeightMultiple = lineHeightMultiply
            let attributedString = NSMutableAttributedString(string: textString)
            attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: attributedString.length))
            
            let dashed =  NSUnderlineStyle.patternDash.rawValue | NSUnderlineStyle.single.rawValue
            attributedString.addAttribute(NSAttributedString.Key.underlineStyle,
                                          value: dashed,
                                          range: NSRange(location: 0, length: attributedString.length))
            self.attributedText = attributedString
        }
    }
}
