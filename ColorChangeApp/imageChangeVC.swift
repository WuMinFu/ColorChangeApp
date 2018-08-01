//
//  imageChangeVC.swift
//  ColorChangeApp
//
//  Created by mac on 2018/8/1.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class imageChangeVC: UIViewController {
    var imageNumber = Int.random(in: 0...4)
    let imageName = ["咖喱飯","蝦仁飯加蛋","魚羹飯","拌飯","麻辣鍋燒意麵"]
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func imageChangeClick(_ sender: UITapGestureRecognizer) {
        imageView.image = UIImage(named: imageName[imageNumber])
        if imageNumber == 4{
            imageNumber = 0
        } else {
            imageNumber += 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: imageName[imageNumber])
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
