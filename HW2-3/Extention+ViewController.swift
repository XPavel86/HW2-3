//
//  Extention+ViewController.swift
//  HW2-3
//
//  Created by Pavel Dolgopolov on 15.02.2024.
//

import UIKit

// MARK: - Setup UI
extension ViewController{
    
    func setupUI() {
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redSlider.value = 0.05
        greenSlider.value = 0.30
        blueSlider.value = 0.50
        
        // создаем связь с методом actionSlider
        [redSlider, greenSlider, blueSlider].forEach {
            slider in slider?.addTarget(
            self, action: #selector(actionSlider(slider:)), for: .valueChanged)
        // присваиваем начальные значения для [red green blue]Value и colorView
            actionSlider(slider: slider! )
        }
    }
}
