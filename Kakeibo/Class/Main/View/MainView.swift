//
//  MainView.swift
//  Kakeibo
//
//  Created by 長沼 真宏 on 2019/12/27.
//  Copyright © 2019 長沼 真宏. All rights reserved.
//

import UIKit

class MainView: UIView {

    // コードから呼び出す際に使用される
    class func instance() -> MainView {
        return UINib(nibName: "MainView", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! MainView
    }
}
