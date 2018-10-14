//
//  TodoUseCase.swift
//  GoAPI
//
//  Created by futa on 2018/10/14.
//  Copyright © 2018年 furiko. All rights reserved.
//

import Foundation

class TodoUseCase {
    func getTodo(successAction: @escaping (_ models: [TodoModel]) -> Void, errorAction: @escaping (Error) -> Void) {
        API.getTodo(successHandler: { entities in
            print("UseCase")
            successAction(TodoTranslator.translator(entities))
        }, errorHandler: { error in
            errorAction(error)
        })
    }
    

}
