//
//  TodoTranslator.swift
//  GoAPI
//
//  Created by futa on 2018/10/14.
//  Copyright © 2018年 furiko. All rights reserved.
//

import Foundation

class TodoTranslator {
    static func translator(_ todoEntities: [TodoEntity]) -> [TodoModel] {
        var todos = [TodoModel]()
        for todoEntity in todoEntities {
            todos.append(TodoModel(
                Id: todoEntity.Id,
                Name: todoEntity.Name,
                Completed: todoEntity.Completed,
                Time: todoEntity.Time
            ))
        }
        return todos
    }
}
