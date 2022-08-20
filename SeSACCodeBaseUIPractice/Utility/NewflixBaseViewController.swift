//
//  NewflixBaseViewController.swift
//  SeSACCodeBaseUIPractice
//
//  Created by Y on 2022/08/20.
//

import UIKit

class NewflixBaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
        
        
    }
    
    func configure() {}
    
    func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .cancel))
        alert.present(self, animated: true)
    }
  
}
