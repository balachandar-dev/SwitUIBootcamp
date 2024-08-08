//
//  User.swift
//  SecondSwiftUIBootcamp
//
//  Created by Janani on 5/6/24.
//

import Foundation

class User : ObservableObject {
    internal init(name: String, luckyNumber: Int) {
        self.name = name
        self.luckyNumber = luckyNumber
    }

    public var name : String
    @Published public var luckyNumber : Int
}
