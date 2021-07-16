//
//  EmailRegularManager.swift
//  Login
//
//  Created by YoungWoo Song on 2021/07/16.
//

import Foundation

class EmailRegularManager{
    private static let emailRegex: String = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    static func isMatching(_ inputValue: String) -> Bool{
        let expression = try! NSRegularExpression(pattern: emailRegex, options: [])
        
        return expression.numberOfMatches(in: inputValue, range: NSMakeRange(0, inputValue.count)) > 0
         
    }
}
