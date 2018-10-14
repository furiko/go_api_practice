//
//  TodoEntity.swift
//  GoAPI
//
//  Created by futa on 2018/10/13.
//  Copyright © 2018年 furiko. All rights reserved.
//

import Foundation
import SwiftyJSON

struct TodoEntity {
    var Id: Int
    var Name: String
    var Completed: Bool
    var Time: String
    
    /*init(object: JSON) {
        self.Name = object["name"].stringValue
        self.Id = object["id"].intValue
        self.Completed = object["completed"].boolValue
    }*/
}
