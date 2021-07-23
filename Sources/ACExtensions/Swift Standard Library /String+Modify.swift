//
//  String+Modify.swift
//  ACExtensions
//
//  Created by AppCraft LLC on 8/23/21.
//

import UIKit

public extension String {
    
    func trim() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func replace(_ target: String, with: String) -> String {
        return self.replacingOccurrences(of: target, with: with, options: NSString.CompareOptions.literal, range: nil)
    }
    
}
