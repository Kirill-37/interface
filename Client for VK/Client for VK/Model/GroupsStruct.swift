//
//  GroupsClass.swift
//  Client for VK
//
//  Created by Кирилл Харузин on 06/12/2019.
//  Copyright © 2019 Кирилл Харузин. All rights reserved.
//

import Foundation
import UIKit

enum GroupCategory {
    case business
    case dating
    case entertaining
    case cognitive
    case scientific
}

enum GroupStatus {
    case open
    case close
}

struct Group {
    var groupName: String = ""
    var groupCategory: GroupCategory
    var groupUsers: Int = 0
    var groupStatus: GroupStatus
}
