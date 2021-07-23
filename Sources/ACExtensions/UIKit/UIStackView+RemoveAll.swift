//
//  UIStackView+RemoveAll.swift
//  ACExtensions
//
//  Created by AppCraft LLC on 8/23/21.
//

import UIKit

public extension UIStackView {
    
    func removeAllArrangedSubviews() {
        for subview in self.arrangedSubviews {
            subview.removeFromSuperview()
        }
    }
    
}
