//
//  NewflixShowPosterButton.swift
//  SeSACCodeBaseUIPractice
//
//  Created by Y on 2022/08/20.
//

import UIKit

class NewflixShowPosterButton: UIButton{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        var config = UIButton.Configuration.plain()
        config.attributedTitle = nil
        
        let button = UIButton(configuration: config)
        layer.cornerRadius = 8
    
        button.configuration = config
    }
}
