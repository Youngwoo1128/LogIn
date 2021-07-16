//
//  ViewController.swift
//  Login
//
//  Created by YoungWoo Song on 2021/07/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewController: UIView!
    let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
            
            let mainViewController = self.mainStoryBoard.instantiateViewController(identifier: "LogInViewController")
            self.show(mainViewController, sender: self)
            var a = 10
            
        }
        
       
    }


}

