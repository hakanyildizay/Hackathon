//
//  login.swift
//  INGHackthon
//
//  Created by Hachathon on 5/9/17.
//  Copyright © 2017 ING BANK. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController
{
    @IBOutlet weak var lblHelloKitty: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        self.lblHelloKitty.text = "Deneme"
        
        
    }
    
    
    
}
