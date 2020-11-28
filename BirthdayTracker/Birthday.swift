//
//  Birthday.swift
//  Birthdays
//
//  Created by Dmitriy Shrayber on 28.11.2020.
//

import Foundation

class Birthday {
    let firstName: String
    let lastName: String
    let birthDate: Date
    
    init(firstName: String, lastName: String, birthDate: Date ) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
    }
}
