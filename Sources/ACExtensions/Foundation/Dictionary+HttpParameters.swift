//
//  Dictionary+HttpParameters.swift
//  ACExtensions
//
//  Created by AppCraft LLC on 8/23/21.
//

import Foundation

public extension Dictionary {
    
    func stringFromHttpParameters() -> String {
        let parameterArray = self.map { key, value -> String in
            var percentEscapedKey: String
            if let keyString = key as? String {
                guard let escapedKey = keyString.addingPercentEncodingForUrlQueryValue() else {
                    return ""
                }
                percentEscapedKey = escapedKey
            } else {
                guard let escapedKey = "\(key)".addingPercentEncodingForUrlQueryValue() else {
                    return ""
                }
                percentEscapedKey = escapedKey
            }
            
            var percentEscapedValue: String
            if let valueString = value as? String {
                guard let escapedValue = valueString.addingPercentEncodingForUrlQueryValue() else {
                    return ""
                }
                percentEscapedValue = escapedValue
            } else {
                guard let escapedValue = "\(value)".addingPercentEncodingForUrlQueryValue() else {
                    return ""
                }
                percentEscapedValue = escapedValue
            }
            
            return "\(percentEscapedKey)=\(percentEscapedValue)"
        }
        
        return parameterArray.joined(separator: "&")
    }
    
}
