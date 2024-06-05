//
//  ApiCall.swift
//  SecondSwiftUIBootcamp
//
//  Created by Janani on 4/6/24.
//

import Foundation

final class Webservice {
    
    static func getUsersData() {
    
    }
}

enum ErrorList : LocalizedError {
    case invalidURL


    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return ""
        default:
            return ""
        }
    }
}

