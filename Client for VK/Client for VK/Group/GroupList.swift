//
//  GroupList.swift
//  Client for VK
//
//  Created by Кирилл Харузин on 05/12/2019.
//  Copyright © 2019 Кирилл Харузин. All rights reserved.
//

import UIKit

class GroupList: UITableViewController {
    var groupList = ["Природа ЦФО", "Заповедники России", "Необетаемая страна"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupTemplate", for: indexPath) as! GroupCell
        
        let groupName = groupList[indexPath.row]
        cell.groupId.text = groupName
        
        return cell
    }

}
