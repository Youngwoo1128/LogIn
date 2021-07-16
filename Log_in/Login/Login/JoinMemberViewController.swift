//
//  JoinMemberViewController.swift
//  Login
//
//  Created by YoungWoo Song on 2021/07/16.
//

import UIKit

class JoinMemberViewController: ViewController{
    
    @IBOutlet weak var firstPassWord: UITextField!
    @IBOutlet weak var secondPassWord: UITextField!
    @IBOutlet weak var checkPW: UILabel!
    @IBOutlet weak var checkEmail: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        var firstPW = firstPassWord.text
        var secondPW = secondPassWord.text
        
        if firstPW == secondPW {
            checkPW.text = "일치하는 비밀번호 입니다."
        }
        
        guard var emailString = emailTextField.text else { return  }
        let isVaildEMailFormat = EmailRegularManager.isMatching(emailString)
        
        if emailTextField.text == isVaildEMailFormat {
            checkEmail.text = "올바른 이메일 형식입니다."
        }
    }
}
