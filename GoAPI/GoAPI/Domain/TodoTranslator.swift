//
//  TodoTranslator.swift
//  GoAPI
//
//  Created by futa on 2018/10/14.
//  Copyright © 2018年 furiko. All rights reserved.
//

import Foundation

class TodoTranslator {
    static func translator(_ todoEntity: TodoEntity) -> TodoModel {
        return TodoModel(
            Id: todoEntity.Id,
            Name: todoEntity.Name,
            Completed: todoEntity.Completed,
            Time: todoEntity.Time
        )
    }
}
