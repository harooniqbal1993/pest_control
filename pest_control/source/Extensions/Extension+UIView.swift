//
//  Extension+UIView.swift
//  pest_control
//
//  Created by Muhammad Haroon Iqbal on 08/03/2025.
//

import Foundation
import UIKit

extension UIView {
    func border(color: UIColor = .black, radius: CGFloat = 0, width: CGFloat = 1.0) {
        self.layer.masksToBounds =  true
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
        self.layer.cornerRadius = radius
    }
}
