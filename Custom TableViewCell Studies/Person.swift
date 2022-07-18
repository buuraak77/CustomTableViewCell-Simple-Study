//
//  Person.swift
//  Custom TableViewCell Studies
//
//  Created by Burak Yılmaz on 18.07.2022.
//

import Foundation

class Person {
    var personID: Int
    var personName: String
    var personTel: Int
    
    init(personID: Int, personName: String, personTel: Int) {
        self.personID = personID
        self.personName = personName
        self.personTel = personTel
    }
}
