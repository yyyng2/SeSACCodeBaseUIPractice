//
//  NewflixSignViewController.swift
//  SeSACCodeBaseUIPractice
//
//  Created by Y on 2022/08/20.
//

import UIKit

class NewflixSignViewController: NewflixBaseViewController {

    var mainView = NewflixSignView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
    }
    override func configure() {
        mainView.signCompleteButton.addTarget(self, action: #selector(signCompleteButtonTapped), for: .touchUpInside)
    }
   
    
    @objc func signCompleteButtonTapped(){
        print("tapp")
        mainView.endEditing(true)
        let password = mainView.passwordTextField.text?.count

        if mainView.emailTextField.text == ""{
            showAlert(title:"!", message: "아이디를 입력해주세요.")
        } else if mainView.passwordTextField.text == "" {
            showAlert(title:"!", message: "비밀번호를 입력해주세요.")
        } else if password! >= 1 && password! <= 5 {
            showAlert(title:"!", message: "비밀번호는 6자리 이상 입력해주세요.")
        }

        if mainView.codeTextField.text != "" {
            let codeNum = Int(mainView.codeTextField.text!)
            if codeNum == nil {
                showAlert(title:"!", message: "추천코드는 숫자로만 입력해주세요.")
            }
        }
        let alert = UIAlertController(title: "축하합니다!", message: "회원가입이 완료되었습니다.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "확인", style: .cancel, handler: {_ in
            self.dismiss(animated: true)
        }))
        self.present(alert, animated: true)
//        showAlert(title: "축하합니다!", message: "회원가입이 완료되었습니다.")
//        dismiss(animated: true)
//        let nav = UINavigationController(rootViewController: vc)
//        self.navigationController?.pushViewController(nav, animated: true)
    }
  

}
