//
//  UITableViewCell+Identifier.swift
//  ACExtensions
//
//  Created by AppCraft LLC on 8/23/21.
//

import UIKit

public extension UITableViewCell {
    
    class var identifier: String {
        return String.className(self)
    }
    
}
