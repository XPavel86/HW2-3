//
//  ViewController.swift
//  HW2-3
//
//  Created by Pavel Dolgopolov on 15.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    override func viewWillLayoutSubviews() {
        colorView.layer.cornerRadius = 10
    }
    
    @IBAction func actionSlider(slider sender: UISlider) {
        
        switch sender {
        case redSlider:
            redValue.text = String(format: "%.2f", sender.value)
        case greenSlider:
            greenValue.text = String(format: "%.2f", sender.value)
        default:
            blueValue.text = String(format: "%.2f", sender.value)
        }
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
    }
}

