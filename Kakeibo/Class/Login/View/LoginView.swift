//
//  LoginView.swift
//  Kakeibo
//
//  Created by 長沼 真宏 on 2019/12/27.
//  Copyright © 2019 長沼 真宏. All rights reserved.
//

import UIKit

protocol LoginViewDelegate {
    // ログイン
    func tapLoginButton()
    
    // faceID
    func tapFaceLoginButton()
}

class LoginView: UIView {

    var delegate: LoginViewDelegate!
    
    @IBOutlet weak var btnLogin: UIButton!

    @IBOutlet weak var faceLogin: UIButton!
    
    // コードから呼び出す際に使用される
    class func instance() -> LoginView {
        return UINib(nibName: "LoginView", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! LoginView
    }
    
    /**
    ログインボタンイベント
    */
    @IBAction func tapButton(sender: UIButton) {
        // ボタンタップで行う処理
        delegate?.tapLoginButton()
    }
    
    /**
     faceログインボタンイベント
    */
    @IBAction func tapFaceButton(sender: UIButton) {
            // ボタンタップで行う処理
            delegate?.tapFaceLoginButton()
    }
}

