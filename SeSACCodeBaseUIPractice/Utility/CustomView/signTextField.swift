//
//  signTextField.swift
//  SeSACCodeBaseUIPractice
//
//  Created by Y on 2022/08/20.
//

import UIKit

class signTextField: UITextField{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI(){
        backgroundColor = .darkGray
        layer.cornerRadius = 8
        textAlignment = .center
        borderStyle = .roundedRect
    }
}
