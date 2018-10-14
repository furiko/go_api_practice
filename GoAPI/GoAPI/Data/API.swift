//
//  API.swift
//  GoAPI
//
//  Created by futa on 2018/10/13.
//  Copyright © 2018年 furiko. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class API {
    static func getTodo(successHandler: @escaping (_ todoEntity: [TodoEntity]) -> Void, errorHandler: @escaping (_ error: Error) -> Void) {
        Alamofire.request(AppConstant.api.createUrl()).validate().responseJSON() {
            response in
            switch(response.result) {
            case .failure(let error):
                print(error)
                errorHandler(error)
            case .success(let data):
                let json = JSON(data)
                print("API")
                var todos = [TodoEntity]()
                for item in json {
                    todos.append(TodoEntity(object: item))
                }
                successHandler(todos)
            }
        }
    }
}
