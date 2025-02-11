//
//  ViewController.swift
//  RandomColorApp
//
//  Created by 박주성 on 2/11/25.
//

import UIKit

class MainViewController: UIViewController {

    private let mainView = MainView()
    
    private var redColor: CGFloat = 255
    private var greenColor: CGFloat = 255
    private var blueColor: CGFloat = 255
    
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAddTarget()
    }
    
    func setupAddTarget() {
        mainView.changeColorButton.addTarget(self, action: #selector(changeColorButtonTapped), for: .touchUpInside)
        mainView.resetButton.addTarget(self, action: #selector(resetButtonTapped), for: .touchUpInside)
    }
    
    
    @objc func changeColorButtonTapped() {
        generateRandomColor()
        
        mainView.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
        mainView.colorLabel.text = "R: \(Int(redColor * 255)),G: \(Int(greenColor * 255)), B: \(Int(blueColor * 255))"
    }
    
    @objc func resetButtonTapped() {
        mainView.backgroundColor = .white
        mainView.colorLabel.text = "R: 255, G: 255, B: 255"
    }
    
    private func generateRandomColor() {
        redColor = CGFloat.random(in: 0...1)
        blueColor = CGFloat.random(in: 0...1)
        greenColor = CGFloat.random(in: 0...1)
    }
}

