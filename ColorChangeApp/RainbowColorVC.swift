//
//  RainbowColorVC.swift
//  ColorChangeApp
//
//  Created by mac on 2018/7/30.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class RainbowColorVC: UIViewController {

    let violet = UIColor(red: 148/255, green: 0, blue: 211/255, alpha: 1)
    let indigo = UIColor(red: 75/255, green: 0, blue: 130/255, alpha: 1)
    let blue = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
    let green = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
    let yellow = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
    let orange = UIColor(red: 1, green: 127/255, blue: 0, alpha: 1)
    let red = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
    var rainbow : [UIColor] = [UIColor]()
    var colorNumber = Int.random(in: 0...6)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rainbow = [violet,indigo,blue,green,yellow,orange,red]
        view.backgroundColor = rainbow[colorNumber]

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func colorChange(_ sender: Any) {
        view.backgroundColor = rainbow[colorNumber]
        if colorNumber == 6 {
            colorNumber = 0
        } else {
            colorNumber += 1
        }
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
