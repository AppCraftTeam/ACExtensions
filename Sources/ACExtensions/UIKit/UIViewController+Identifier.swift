//
//  UIViewController+Identifier.swift
//  ACExtensions
//
//  Created by AppCraft LLC on 8/23/21.
//

import UIKit

public extension UIViewController {
    
    class var identifier: String {
        return String.className(self)
    }
    
}
