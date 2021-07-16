//
//  LogInViewController.swift
//  Login
//
//  Created by YoungWoo Song on 2021/07/16.
//

import UIKit

class LogInViewController: ViewController {

    @IBOutlet weak var btnJoinMember: UIButton!
    
    let myJoinStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
        override func viewDidLoad() {
        super .viewDidLoad()
            
            
        
    }
    
    @IBAction func joinMember(_ sender: Any) {
        let joinViewController = myJoinStoryBoard.instantiateViewController(identifier: "JoinMemberViewController")
        
        self.show(joinViewController, sender: self)
    }
    
    
}
