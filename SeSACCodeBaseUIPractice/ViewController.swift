//
//  ViewController.swift
//  SeSACCodeBaseUIPractice
//
//  Created by Y on 2022/08/17.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let xButton: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName: "xmark"), for: .normal)
        button.setTitle(nil, for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let settingButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "gearshape.circle"), for: .normal)
        button.setTitle(nil, for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let grayLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray4
        return view
    }()
    
    let chatButton: UIButton = {
    
        var config = UIButton.Configuration.plain()
        var titleAttr = AttributedString.init("나와의 채팅")
            titleAttr.font = .systemFont(ofSize: 12.0, weight: .heavy)
            config.attributedTitle = titleAttr
        
        let button = UIButton(configuration: config)
        config.image = UIImage(systemName: "bubble.left.fill")
        config.imagePlacement = .top
        config.imagePadding = 10
        config.baseForegroundColor = .white
        
        button.setTitleColor(UIColor.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .bottom
        button.configuration = config
        return button
    }()
    
    let profileButton: UIButton = {
        var config = UIButton.Configuration.plain()
        var titleAttr = AttributedString.init("프로필 편집")
            titleAttr.font = .systemFont(ofSize: 12.0, weight: .heavy)
            config.attributedTitle = titleAttr
        
        let button = UIButton(configuration: config)
        config.image = UIImage(systemName: "pencil")
        config.imagePlacement = .top
        config.imagePadding = 10
        config.baseForegroundColor = .white
  
        button.setTitleColor(UIColor.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .bottom
        button.configuration = config
        return button
    }()
    
    let kakaoStoryButton: UIButton = {
        var config = UIButton.Configuration.plain()
        var titleAttr = AttributedString.init("카카오스토리")
            titleAttr.font = .systemFont(ofSize: 12.0, weight: .heavy)
            config.attributedTitle = titleAttr
        
        let button = UIButton(configuration: config)
        config.image = UIImage(systemName: "command")
        config.imagePlacement = .top
        config.imagePadding = 10
        config.baseForegroundColor = .white

        button.setTitleColor(UIColor.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .bottom
        button.configuration = config
        return button
    }()
    
    let profileImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "person.fill")
        view.tintColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
        view.clipsToBounds = true
        view.layer.cornerRadius = 43
        return view
    }()
    
    let nicknameLabel: UILabel = {
        let text = UILabel()
        text.text = "닉네임"
        text.textColor = .white
        text.font = .boldSystemFont(ofSize: 20)
        text.textAlignment = .center
        return text
    }()
    
    let statusLabel: UILabel = {
        let text = UILabel()
        text.text = "상태 메세지"
        text.textColor = .white
        text.font = .systemFont(ofSize: 16)
        text.textAlignment = .center
        return text
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        [xButton, chatButton, settingButton, profileButton, kakaoStoryButton, grayLineView, profileImageView, nicknameLabel, statusLabel].forEach {
            view.addSubview($0)
        }
        xButton.snp.makeConstraints { make in
            make.width.equalTo(40)
            make.height.equalTo(40)
            make.leading.equalTo(20)
            make.top.equalTo(view.safeAreaLayoutGuide)
        }
        chatButton.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.leading.equalTo(30)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-25)
        }
        profileButton.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.centerX.equalTo(view)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-25)
        }
        kakaoStoryButton.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.trailing.equalTo(-30)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-25)
        }
        settingButton.snp.makeConstraints { make in
            make.width.equalTo(40)
            make.height.equalTo(40)
            make.trailing.equalTo(-20)
            make.top.equalTo(view.safeAreaLayoutGuide)
        }
        grayLineView.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width)
            make.height.equalTo(1)
            make.leading.equalTo(0)
            make.trailing.equalTo(0)
            make.bottom.equalTo(chatButton.snp.top).offset(10)
        }
        profileImageView.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.centerX.equalTo(view)
            make.bottom.equalTo(nicknameLabel.snp.top).offset(-10)
        }
        nicknameLabel.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width/1.5)
            make.height.equalTo(40)
            make.centerX.equalTo(view)
            make.bottom.equalTo(statusLabel.snp.top).offset(0)
        }
        statusLabel.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width/1.5)
            make.height.equalTo(40)
            make.centerX.equalTo(view)
            make.bottom.equalTo(grayLineView.snp.top).offset(-10)
        }
    }


}
