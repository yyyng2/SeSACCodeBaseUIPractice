//
//  NewflixSignView.swift
//  SeSACCodeBaseUIPractice
//
//  Created by Y on 2022/08/20.
//

import UIKit

import SnapKit

class NewflixSignView: NewflixBaseView{
    
    let newflixLabel: UILabel = {
       let label = UILabel()
        label.text = "NEWFLIX"
        label.textColor = .red
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 30, weight: .black)
        return label
    }()
    let emailLabel: SignLabel = {
        let label = SignLabel()
        label.text = "이메일 주소 또는 전화번호 *"
        return label
    }()
    let emailTextField: signTextField = {
       let text = signTextField()
        text.attributedPlaceholder = NSAttributedString(string: "newflix@gmail.com", attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemGray3])
        text.tintColor = .white
        text.keyboardType = .emailAddress
        return text
    }()
    let passwordLabel: SignLabel = {
        let label = SignLabel()
        label.text = "비밀번호 *"
        return label
    }()
    let passwordTextField: signTextField = {
        let text = signTextField()
        text.attributedPlaceholder = NSAttributedString(string: "6자리 이상", attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemGray3])
        text.keyboardType = .emailAddress
        text.isSecureTextEntry = true
        return text
    }()
    let nicknameLabel: SignLabel = {
        let label = SignLabel()
        label.text = "닉네임"
        return label
    }()
    let nicknameTextField: signTextField = {
       let text = signTextField()
        text.attributedPlaceholder = NSAttributedString(string: "뉴플릭스팬", attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemGray3])
        text.keyboardType = .emailAddress
        return text
    }()
    let locationLabel: SignLabel = {
        let label = SignLabel()
        label.text = "위치"
        return label
    }()
    let locationTextField: signTextField = {
        let text = signTextField()
        text.keyboardType = .emailAddress
        return text
    }()
    let codeLabel: SignLabel = {
        let label = SignLabel()
        label.text = "추천 코드"
        return label
    }()
    let codeTextField: signTextField = {
       let text = signTextField()
        text.attributedPlaceholder = NSAttributedString(string: "1234", attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemGray3])
        text.keyboardType = .numberPad
        return text
    }()
    let signCompleteButton: UIButton = {
        let button = UIButton()
        button.setTitle("회원가입", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 8
        button.backgroundColor = .white
        return button
    }()
    let choiceLabel: SignLabel = {
        let label = SignLabel()
        label.text = "추가 정보 입력"
        return label
    }()
    let choiceSwitchButton: UISwitch = {
       let button = UISwitch()
        button.setOn(true, animated: true)
        button.onTintColor = UIColor.red
        button.thumbTintColor = .white
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configure() {
        [newflixLabel, emailLabel, emailTextField, passwordLabel, passwordTextField, nicknameLabel, nicknameTextField, locationLabel, locationTextField, codeLabel, codeTextField, signCompleteButton, choiceLabel, choiceSwitchButton].forEach {
            addSubview($0)
        }
    }
    override func setConstraints() {
        newflixLabel.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.width.equalTo(self)
            make.height.equalTo(50)
            make.top.equalTo(80)
        }
        emailLabel.snp.makeConstraints { make in
            make.width.equalTo(self).multipliedBy(0.8)
            make.height.equalTo(20)
            make.top.equalTo(newflixLabel.snp.bottom).offset(70)
            make.centerX.equalTo(self)
        }
        emailTextField.snp.makeConstraints { make in
            make.width.equalTo(self).multipliedBy(0.8)
            make.height.equalTo(30)
            make.top.equalTo(emailLabel.snp.bottom).offset(8)
            make.centerX.equalTo(self)
        }
        passwordLabel.snp.makeConstraints { make in
            make.width.equalTo(self).multipliedBy(0.8)
            make.height.equalTo(20)
            make.top.equalTo(emailTextField.snp.bottom).offset(8)
            make.centerX.equalTo(self)
        }
        passwordTextField.snp.makeConstraints { make in
            make.width.equalTo(self).multipliedBy(0.8)
            make.height.equalTo(30)
            make.top.equalTo(passwordLabel.snp.bottom).offset(8)
            make.centerX.equalTo(self)
        }
        nicknameLabel.snp.makeConstraints { make in
            make.width.equalTo(self).multipliedBy(0.8)
            make.height.equalTo(20)
            make.top.equalTo(passwordTextField.snp.bottom).offset(8)
            make.centerX.equalTo(self)
        }
        nicknameTextField.snp.makeConstraints { make in
            make.width.equalTo(self).multipliedBy(0.8)
            make.height.equalTo(30)
            make.top.equalTo(nicknameLabel.snp.bottom).offset(8)
            make.centerX.equalTo(self)
        }
        locationLabel.snp.makeConstraints { make in
            make.width.equalTo(self).multipliedBy(0.8)
            make.height.equalTo(20)
            make.top.equalTo(nicknameTextField.snp.bottom).offset(8)
            make.centerX.equalTo(self)
        }
        locationTextField.snp.makeConstraints { make in
            make.width.equalTo(self).multipliedBy(0.8)
            make.height.equalTo(30)
            make.top.equalTo(locationLabel.snp.bottom).offset(8)
            make.centerX.equalTo(self)
        }
        codeLabel.snp.makeConstraints { make in
            make.width.equalTo(self).multipliedBy(0.8)
            make.height.equalTo(20)
            make.top.equalTo(locationTextField.snp.bottom).offset(8)
            make.centerX.equalTo(self)
        }
        codeTextField.snp.makeConstraints { make in
            make.width.equalTo(self).multipliedBy(0.8)
            make.height.equalTo(30)
            make.top.equalTo(codeLabel.snp.bottom).offset(8)
            make.centerX.equalTo(self)
        }
        signCompleteButton.snp.makeConstraints { make in
            make.width.equalTo(self).multipliedBy(0.8)
            make.height.equalTo(40)
            make.top.equalTo(codeTextField.snp.bottom).offset(24)
            make.centerX.equalTo(self)
        }
        choiceLabel.snp.makeConstraints { make in
            make.width.equalTo(self).multipliedBy(0.8)
            make.height.equalTo(20)
            make.top.equalTo(signCompleteButton.snp.bottom).offset(8)
            make.centerX.equalTo(self)
        }
        choiceSwitchButton.snp.makeConstraints { make in
            make.height.equalTo(25)
            make.width.equalTo(30)
            make.top.equalTo(signCompleteButton.snp.bottom).offset(8)
            make.right.equalTo(signCompleteButton.snp.right).offset(-20)
        }
    }
}
