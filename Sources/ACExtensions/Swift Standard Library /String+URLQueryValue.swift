//
//  String+UrlQueryValue.swift
//  ACExtensions
//
//  Created by AppCraft LLC on 8/23/21.
//

import UIKit

public extension String {
    
    func addingPercentEncodingForUrlQueryValue() -> String? {
        let generalDelimitersToEncode = ":#[]@"
        let subDelimitersToEncode = "!$&'()*+,;="
        
        var allowed = CharacterSet.urlQueryAllowed
        allowed.remove(charactersIn: generalDelimitersToEncode + subDelimitersToEncode)
        
        return addingPercentEncoding(withAllowedCharacters: allowed)
    }
    
}
