//
//  TodoPresenter.swift
//  GoAPI
//
//  Created by futa on 2018/10/14.
//  Copyright © 2018年 furiko. All rights reserved.
//

import Foundation

class TodoPresenter {
    
    let useCase: TodoUseCase
    let view: TodoView
    
    init(useCase: TodoUseCase = TodoUseCase(), view: TodoView) {
        self.useCase = useCase
        self.view = view
    }
    
    func printTodo() {
        useCase.getTodo(successAction: { todo in
            self.view.printTodo(todo)
        }, errorAction: { error in
            self.view.errorHandler(error)
        })
    }
}
