//
//  AppConstant.swift
//  GoAPI
//
//  Created by futa on 2018/10/14.
//  Copyright © 2018年 furiko. All rights reserved.
//

import Foundation

class AppConstant {
    struct api {
        static let url = "http://localhost:8080/todos"
        static func createUrl() -> String{
            return url
        }
    }
}
