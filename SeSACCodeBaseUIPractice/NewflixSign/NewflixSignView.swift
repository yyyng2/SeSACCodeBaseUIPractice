//
//  NewflixSignView.swift
//  SeSACCodeBaseUIPractice
//
//  Created by Y on 2022/08/20.
//

import UIKit

import SnapKit

class NewflixSignView: NewflixBaseView{

    let emailTextField: signTextField = {
       let text = signTextField()
        return text
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
