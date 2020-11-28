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
    var birthDate: Date
    var birthDay: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter.string(from: birthDate)
    }
    
    
    
    init(firstName: String, lastName: String, birthDate: Date ) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
    }
}


