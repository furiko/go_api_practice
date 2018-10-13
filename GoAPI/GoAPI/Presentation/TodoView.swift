//
//  TodoView.swift
//  GoAPI
//
//  Created by futa on 2018/10/14.
//  Copyright © 2018年 furiko. All rights reserved.
//

import Foundation

protocol TodoView {
    func printTodo(_ todo: TodoModel)
    func errorHandler(_ error: Error)
}
