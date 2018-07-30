//
//  ViewController.swift
//  ColorChangeApp
//
//  Created by mac on 2018/7/26.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /*
     參考：
     https://medium.com/彼得潘的-swift-ios-app-開發教室/13-莫莉-fe47c67e8631
 */
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var layerCornerRadiusLabel: UILabel!
    
    
     @IBOutlet weak var redSwitch: UISwitch!
     @IBOutlet weak var greenSwitch: UISwitch!
     @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var alphaSwitch: UISwitch!
    @IBOutlet weak var layerCornerRadiusSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var layerCornerRadiusSlider: UISlider!
    
    
    @IBAction func colorSliderChange(_ sender: UISlider) {
        switch sender {
        case redSlider:
            redLabel.text = "\(String(format: "%0.2f", redSlider.value))"
        case greenSlider:
            greenLabel.text = "\(String(format: "%0.2f", greenSlider.value))"
        case blueSlider:
            blueLabel.text = "\(String(format: "%0.2f", blueSlider.value))"
        case alphaSlider:
            alphaLabel.text = "\(String(format: "%0.2f", alphaSlider.value))"
        case layerCornerRadiusSlider:
            layerCornerRadiusLabel.text = "\(String(format: "%0.2f", layerCornerRadiusSlider.value))"
            
        default:
            break
        }
         imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        imageView.layer.cornerRadius = CGFloat(layerCornerRadiusSlider.value)
    }
    @IBAction func colorIsEnabledSwitch(_ sender: UISwitch) {
        if sender.isOn == false{
            switch sender {
            case redSwitch:
                redSlider.isEnabled = false
            case greenSwitch:
                greenSlider.isEnabled = false
            case blueSwitch:
                blueSlider.isEnabled = false
            case alphaSwitch:
                alphaSlider.isEnabled = false
            default:
                break
            }
        } else {
            switch sender {
            case redSwitch:
                redSlider.isEnabled = true
            case greenSwitch:
                greenSlider.isEnabled = true
            case blueSwitch:
                blueSlider.isEnabled = true
            case alphaSwitch:
                alphaSlider.isEnabled = true
            default:
                break
            }
        }
        
        
        
        
        
//        switch sender {
//        case redSwitch:
//            if sender.isOn == false{
//                redSlider.isEnabled = false
//            } else {
//                redSlider.isEnabled = true
//            }
//        case greenSwitch:
//            if sender.isOn == false{
//                greenSlider.isEnabled = false
//            } else {
//                greenSlider.isEnabled = true
//            }
//        case blueSwitch:
//            if sender.isOn == false{
//                blueSlider.isEnabled = false
//            } else {
//                blueSlider.isEnabled = true
//            }
//        case alphaSwitch:
//            if sender.isOn == false{
//                alphaSlider.isEnabled = false
//            } else {
//                alphaSlider.isEnabled = true
//            }
//        default:
//            break
//        }
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

