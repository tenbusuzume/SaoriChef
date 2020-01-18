//
//  MainModel.swift
//  Kakeibo
//
//  Created by 長沼 真宏 on 2019/12/28.
//  Copyright © 2019 長沼 真宏. All rights reserved.
//

import UIKit

class MainModel: NSObject {

     class func getcicleParam() -> [Dictionary<String,Any>] {
        var params = [Dictionary<String,Any>]()
        params.append(["value":7,"color":UIColor.red])
        params.append(["value":5,"color":UIColor.blue])
        params.append(["value":8,"color":UIColor.green])
        params.append(["value":10,"color":UIColor.yellow])
        return params
    }
    
}
