//
//  User.swift
//  UberTutorial
//
//  Created by dj on 17/02/2020.
//  Copyright © 2020 DJ. All rights reserved.
//
import CoreLocation


enum AccountType: Int{
    case passenger
    case driver
}

struct User {
    let fullName: String
    let email: String
    var accountType: AccountType!
    var location: CLLocation?
    let uid: String
    
    init(uid: String, dictionary: [String: Any]){
        self.uid = uid
        self.fullName = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""

        if let index = dictionary["accountType"] as? Int {
            self.accountType = AccountType(rawValue: index)
        }
    }
}
