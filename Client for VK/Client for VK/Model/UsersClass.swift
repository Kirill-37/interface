//
//  UserStruct.swift
//  Client for VK
//
//  Created by Кирилл Харузин on 06/12/2019.
//  Copyright © 2019 Кирилл Харузин. All rights reserved.
//

import Foundation
import UIKit

enum UserGender: String {
    case male
    case female
}

enum UserStatus: String {
    case merried
    case isFree
    case inSeach
    case engaged
}

class User {
    var userName: String = ""
    var userSurname: String = ""
    var userAge: Int = 0
    var userGender: UserGender
    var userStatus: UserStatus
}

