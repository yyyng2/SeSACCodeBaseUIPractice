//
//  NewflixViewController.swift
//  SeSACCodeBaseUIPractice
//
//  Created by Y on 2022/08/20.
//

import UIKit

class NewflixViewController: NewflixBaseViewController {

    var mainView = NewflixView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func configure() {
        mainView.signButton.addTarget(self, action: #selector(signButtonTapped), for: .touchUpInside)
    }
    
    @objc func signButtonTapped(){
        print("tap")
        let vc = NewflixSignViewController()
        present(vc, animated: true)
//        dismiss(animated: true)
    }

   
}
