//
//  LoginViewController.swift
//  Kakeibo
//
//  Created by 長沼 真宏 on 2019/12/27.
//  Copyright © 2019 長沼 真宏. All rights reserved.
//

import UIKit
import LocalAuthentication

class LoginViewController: UIViewController {

    var loginVC:LoginView!
    
    override func loadView() {
        self.loginVC = LoginView.instance()
        self.view = self.loginVC
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setView()
        // Do any additional setup after loading the view.
    }
    
    func setView() {
        self.loginVC.delegate = self
    }

    func moveMainVC() {
        // 画面遷移
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "MainVC", sender: self)
        }
    }

}

// :MARK
// LoginViewデリゲート
extension LoginViewController: LoginViewDelegate {
    
    func tapLoginButton() {
        self.moveMainVC()
    }
    
    func tapFaceLoginButton() {
        self.checkFaceIDlogin()
    }
}

// :MARK FaceIDLogin
extension LoginViewController {
    
    func checkFaceIDlogin () {
    
      let ctx = LAContext()
        let localizedReasonString = "ロックを解除"
        var error: NSError?
        if ctx.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            ctx.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics,
                               localizedReason: localizedReasonString) { (success, evaluateError) in
                                if success {
                                    self.moveMainVC()
                                } else {
                                    let ac = UIAlertController(title: "認証失敗",
                                                               message: evaluateError?.localizedDescription,
                                                               preferredStyle: .alert)
                                    ac.addAction(UIAlertAction(title: "OK", style: .default))
                                    self.present(ac, animated: true)
                                }
            }
        } else {
            let ac = UIAlertController(title: "Error",
                                       message: error?.localizedDescription,
                                       preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        }
    }
}
