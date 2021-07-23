//
//  Data+Modify.swift
//  ACExtensions
//
//  Created by AppCraft LLC on 8/23/21.
//

import Foundation

public extension Data {
    
    mutating func append(_ string: String) {
        if let data = string.data(using: .utf8) {
            append(data)
        }
    }
}
