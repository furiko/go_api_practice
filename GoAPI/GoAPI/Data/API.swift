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
    func get() -> TodoEntity {
        Alamofire.request("localhost:8080").validate().responseJSON() {
            response in
            switch(response.result) {
            case .failure(let error):
                print(error)
            case .success(let data):
                print(data)
            }
        }

        let todo = TodoEntity(Id: 1, Name: "test", Completed: false, Time: NSDate() as Date)
        return  todo
    }
}
