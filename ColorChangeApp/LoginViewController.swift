//
//  LoginViewController.swift
//  ColorChangeApp
//
//  Created by mac on 2018/7/26.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBAction func clickTap(_ sender: Any) {
        if view.backgroundColor == UIColor.white {
           view.backgroundColor = UIColor.blue
        } else {
           view.backgroundColor = UIColor.white
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
