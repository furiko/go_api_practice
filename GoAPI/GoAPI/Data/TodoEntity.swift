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
    
    init(object: (String,JSON)) {
        self.Name = object.1["name"].stringValue
        self.Id = object.1["id"].intValue
        self.Completed = object.1["completed"].boolValue
        self.Time = object.1["due"].stringValue
    }
}
