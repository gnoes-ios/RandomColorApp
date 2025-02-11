//
//  MainView.swift
//  RandomColorApp
//
//  Created by 박주성 on 2/11/25.
//

import UIKit

class MainView: UIView {
    
    var colorLabel: UILabel = {
        let label = UILabel()
        label.text = "R: 255, G: 255, B: 255"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    var changeColorButton: UIButton = {
        let button = UIButton()
        button.setTitle("Change Color", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.backgroundColor = .green
        return button
    }()
    
    var resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.backgroundColor = .red
        return button
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [changeColorButton, resetButton])
        stackView.spacing = 20
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI() {
        backgroundColor = .white
        [colorLabel, stackView].forEach { addSubview($0) }
    
        setupAutoLayout()
    }
    
    func setupAutoLayout() {
        colorLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            colorLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            colorLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            stackView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
}
