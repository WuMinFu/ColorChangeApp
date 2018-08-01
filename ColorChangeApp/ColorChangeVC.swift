//
//  ColorChangeVC.swift
//  ColorChangeApp
//
//  Created by mac on 2018/7/26.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class ColorChangeVC: UIViewController {
    var lightOn = true
    @IBAction func clickTap(_ sender: Any) {
        lightOn = !lightOn
        if lightOn {
           view.backgroundColor = .white
        } else {
            view.backgroundColor = UIColor(red: 0, green: 0, blue: 255/255, alpha: 1)
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
