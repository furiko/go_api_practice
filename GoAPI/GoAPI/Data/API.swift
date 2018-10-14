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
        //localhostだとrequestがうまくいかない
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
                    todos.append(TodoEntity(
                        Id: item.1["id"].intValue,
                        Name: item.1["name"].stringValue,
                        Completed: item.1["completed"].boolValue,
                        Time: item.1["due"].stringValue
                    ))
                }
                //let todo = TodoEntity(Id: 1, Name: "test", Completed: false, Time: "06:30")
                successHandler(todos)
            }
        }
    }
}
