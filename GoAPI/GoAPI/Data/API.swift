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
    static func getTodo(successHandler: @escaping (_ todoEntity: TodoEntity) -> Void, errorHandler: @escaping (_ error: Error) -> Void) {
        //localhostだとrequestがうまくいかない
//        "http://localhost:8080"
        Alamofire.request("http://localhost:8080/todos"/*"https://api.github.com/repos/furiko/go_api_practice"*/).validate().responseJSON() {
            response in
            switch(response.result) {
            case .failure(let error):
                print(error)
                errorHandler(error)
            case .success(let _):
//                print(data)
                print("API")
                let todo = TodoEntity(Id: 1, Name: "test", Completed: false, Time: NSDate() as Date)
                successHandler(todo)
            }
        }


    }
}
