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
    // 円グラフ
    var graphView:PieGraphView!;
    
    override func loadView() {
        self.mainVC = MainView.instance()
        self.view = self.mainVC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setView()
        // Do any additional setup after loading the view.
    }
    
    func setView() {
        self.graphView = PieGraphView(frame: CGRect(x: 0, y: 0, width: 320, height: 320), params: MainModel.getcicleParam() as [Dictionary<String, AnyObject>])
        self.view.addSubview(graphView)
        graphView.startAnimating()
    }
}
