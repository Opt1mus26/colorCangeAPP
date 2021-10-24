//
//  ViewController.swift
//  colorCangeAPP
//
//  Created by Павел Цыганов on 23.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var colorRedText: UILabel!
    @IBOutlet var colorRedValue: UILabel!
    @IBOutlet var colorRedSlider: UISlider!
    
    @IBOutlet var colorGreenText: UILabel!
    @IBOutlet var colorGreenValue: UILabel!
    @IBOutlet var colorGreenSlider: UISlider!
    
    @IBOutlet var colorBlueText: UILabel!
    @IBOutlet var colorBlueValue: UILabel!
    @IBOutlet var colorBlueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorRedText.text = "Red:"
        colorGreenText.text = "Green:"
        colorBlueText.text = "Blue:"
        
        colorRedSlider.minimumValue = 0
        colorRedSlider.maximumValue = 1
        colorRedSlider.value = 0
        colorRedValue.text = String(colorRedSlider.value)
        
        colorGreenSlider.minimumValue = 0
        colorGreenSlider.maximumValue = 1
        colorGreenSlider.value = 0
        colorGreenValue.text = String(colorGreenSlider.value)
        
        colorBlueSlider.minimumValue = 0
        colorBlueSlider.maximumValue = 1
        colorBlueSlider.value = 0
        colorBlueValue.text = String(colorBlueSlider.value)
        
    }
    
    @IBAction func sliderRedAction() {
        colorRedValue.text = String(format: "%.2f", arguments: [colorRedSlider.value])
        changeColorView()
        cangeColorText()
    }
    
    @IBAction func sliderGreenAction() {
        colorGreenValue.text = String(format: "%.2f", arguments: [colorGreenSlider.value])
        changeColorView()
        cangeColorText()
    }
    
    @IBAction func sliderBlueAction() {
        colorBlueValue.text = String(round(colorBlueSlider.value * 100) / 100.0)
        changeColorView()
        cangeColorText()
    }
    
    private func changeColorView() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(colorRedSlider.value),
            green: CGFloat(colorGreenSlider.value),
            blue: CGFloat(colorBlueSlider.value),
            alpha: 1
        )
    }
    private func cangeColorText() {
        colorBlueValue.textColor = colorView.backgroundColor
        colorRedValue.textColor = colorView.backgroundColor
        colorGreenValue.textColor = colorView.backgroundColor
    }
    
    
    
}

