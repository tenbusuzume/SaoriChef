//
//  MainViewController.swift
//  Kakeibo
//
//  Created by 長沼 真宏 on 2019/12/27.
//  Copyright © 2019 長沼 真宏. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var mainVC:MainView!
    
    override func loadView() {
        self.mainVC = MainView.instance()
        self.view = self.mainVC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
