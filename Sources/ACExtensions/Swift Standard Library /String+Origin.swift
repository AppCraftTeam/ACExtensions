//
//  String+Origin.swift
//  ACExtensions
//
//  Created by AppCraft LLC on 8/23/21.
//

import UIKit

public extension String {
    
    static func className(_ aClass: AnyClass) -> String {
        NSStringFromClass(aClass).components(separatedBy: ".").last ?? ""
    }
    
    static func objectName(_ aObject: AnyObject) -> String {
        String(describing: aObject).components(separatedBy: ".").last ?? ""
    }
    
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
    
}
