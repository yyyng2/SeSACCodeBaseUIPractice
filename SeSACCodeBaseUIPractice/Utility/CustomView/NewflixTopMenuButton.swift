//
//  NewflixTopMenuButton.swift
//  SeSACCodeBaseUIPractice
//
//  Created by Y on 2022/08/20.
//

import UIKit

class NewflixTopMenuButton: UIButton{
    
    var config = UIButton.Configuration.plain()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        setTitleColor(.white, for: .normal)

    }
}
