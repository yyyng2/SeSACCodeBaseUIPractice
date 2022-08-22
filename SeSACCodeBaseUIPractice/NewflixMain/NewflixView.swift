//
//  NewflixView.swift
//  SeSACCodeBaseUIPractice
//
//  Created by Y on 2022/08/20.
//

import Foundation
import UIKit
import SnapKit

class NewflixView: NewflixBaseView{
    
    let posterImage: UIImageView = {
        let image = UIImageView()
        
       return image
    }()
    
    let backgroundImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "background.png")
        return image
    }()
    
    let nButton: UIButton = {
        var config = UIButton.Configuration.plain()
       let button = UIButton(configuration: config)
        config.attributedTitle = nil
        config.background.image = UIImage(named: "logo.jpg")
        config.background.imageContentMode = .scaleAspectFit
        config.baseBackgroundColor = .black
        button.contentMode = .scaleAspectFit
        button.configuration = config
        return button
    }()
    
    let seriesMenuButton: NewflixTopMenuButton = {
       let button = NewflixTopMenuButton()
        var config = UIButton.Configuration.plain()
        config.baseForegroundColor = .white
        config.attributedTitle = "시리즈"
        config.titleAlignment = .center
        config.attributedTitle?.font = .systemFont(ofSize: 17)
        button.configuration = config
        return button
    }()
    let movieMenuButton: NewflixTopMenuButton = {
       let button = NewflixTopMenuButton()
        var config = UIButton.Configuration.plain()
        config.baseForegroundColor = .white
        config.attributedTitle = "영화"
        config.attributedTitle?.font = .systemFont(ofSize: 17)
        config.titleAlignment = .center
        button.configuration = config
        return button
    }()
    let categoryMenuButton: NewflixTopMenuButton = {
       let button = NewflixTopMenuButton()
        var config = UIButton.Configuration.plain()
        config.baseForegroundColor = .white
        config.attributedTitle = "카테고리"
        config.titleAlignment = .center
        config.attributedTitle?.font = .systemFont(ofSize: 17)
        button.configuration = config
        return button
    }()
    
    let signButton: UIButton = {
        var config = UIButton.Configuration.plain()
       let button = UIButton(configuration: config)
        config.attributedTitle = nil
        config.background.image = UIImage(named: "sign.jpg")
        config.background.imageContentMode = .scaleAspectFit
        config.baseBackgroundColor = .black
        button.contentMode = .scaleAspectFit
        button.configuration = config
        return button
    }()
    
    let myContentsButton: UIButton = {
        var config = UIButton.Configuration.plain()
        var titleAttr = AttributedString.init("내가 찜한 콘텐츠")
            titleAttr.font = .systemFont(ofSize: 12.0, weight: .heavy)
            config.attributedTitle = titleAttr
        
        let button = UIButton(configuration: config)
        config.image = UIImage(systemName: "plus")
        //imagePlacement = 이미지 위치, top주면 어트리뷰트스트링 위로
        config.imagePlacement = .top
        config.imagePadding = 10
        config.baseForegroundColor = .white
        
        button.setTitleColor(UIColor.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .bottom
        button.configuration = config
        return button
    }()
    
    let playButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.attributedTitle = nil
        
        let button = UIButton(configuration: config)
        config.background.image = UIImage(named: "play_normal.png")
        button.configuration = config
        return button
    }()
    
    let infoButton: UIButton = {
        var config = UIButton.Configuration.plain()
        var titleAttr = AttributedString.init("정보")
            titleAttr.font = .systemFont(ofSize: 12.0, weight: .heavy)
            config.attributedTitle = titleAttr
        
        let button = UIButton(configuration: config)
        config.image = UIImage(systemName: "info.circle")

        config.imagePlacement = .top
        config.imagePadding = 10
        config.baseForegroundColor = .white
        
        button.setTitleColor(UIColor.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .bottom
        button.configuration = config
        return button
    }()
    
    let korTopSeriesLabel: UILabel = {
       let label = UILabel()
        label.text = "오늘 대한민국의 인기 시리즈"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 17)
        return label
    }()
    
    let oneImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "one.png")
        return image
    }()
    
    let onePoster: NewflixShowPosterButton = {
        let poster = NewflixShowPosterButton()
        var config = UIButton.Configuration.plain()
        config.attributedTitle = nil
        config.background.image = UIImage(systemName: "info")
        poster.configuration = config
        return poster
    }()
    
    let twoImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "two.png")
        return image
    }()
    
    let twoPoster: NewflixShowPosterButton = {
        let poster = NewflixShowPosterButton()
        var config = UIButton.Configuration.plain()
        config.attributedTitle = nil
        config.background.image = UIImage(systemName: "info")
        poster.configuration = config
        return poster
    }()
    
    let threeImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "three.png")
        return image
    }()
    
    let threePoster: NewflixShowPosterButton = {
        let poster = NewflixShowPosterButton()
        var config = UIButton.Configuration.plain()
        config.attributedTitle = nil
        config.background.image = UIImage(systemName: "info")
        poster.configuration = config
        return poster
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .black
        //백그라운드컬러에 이미지 넣을 수 있음
        //self.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        
        TrendAPIManager.shared.getMedia(startPage: 1) { json in
           let posterImage = json["results"][0]["poster_path"].stringValue
            let url = URL(string: "\(EndPoint.profileURL)\(posterImage)")
            DispatchQueue.global().async { [weak self] in
                if let data = try? Data(contentsOf: url!) {
                    if let image = UIImage(data: data) {
                        //UI 변경 작업은 main thread에서 해야함.
                        DispatchQueue.main.async {
                            self?.posterImage.image = image
                        }
                    }
                }
            }
        }
        TrendAPIManager.shared.getShow(startPage: 1) { json in
            let posterImage = json["results"][0]["poster_path"].stringValue
            let posterImage1 = json["results"][1]["poster_path"].stringValue
            let posterImage2 = json["results"][2]["poster_path"].stringValue
             let url1 = URL(string: "\(EndPoint.profileURL)\(posterImage)")
            let url2 = URL(string: "\(EndPoint.profileURL)\(posterImage1)")
            let url3 = URL(string: "\(EndPoint.profileURL)\(posterImage2)")
            self.setImage(url: url1!, poster: self.onePoster)
            self.setImage(url: url2!, poster: self.twoPoster)
            self.setImage(url: url3!, poster: self.threePoster)
        }
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setImage(url: URL, poster: NewflixShowPosterButton){
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    //UI 변경 작업은 main thread에서 해야함.
                    DispatchQueue.main.async {
                        poster.configuration?.background.image = image
                    }
                }
            }
        }
    }
    
    override func configure() {
        [posterImage, backgroundImage, nButton, seriesMenuButton, movieMenuButton, categoryMenuButton, signButton, myContentsButton, playButton, infoButton, korTopSeriesLabel, onePoster, oneImage, twoPoster, twoImage, threePoster, threeImage].forEach{
            addSubview($0)
        }
        
    }
    
    override func setConstraints() {
        posterImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.centerX.equalTo(self)
            make.width.equalToSuperview()
            make.height.equalTo(self).multipliedBy(0.7)
        }
        backgroundImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.centerX.equalTo(self)
            make.width.equalToSuperview()
            make.height.equalTo(self).multipliedBy(0.7)
        }
        nButton.snp.makeConstraints { make in
            make.width.height.equalTo(50)
            make.left.equalTo(20)
            make.top.equalTo(40)
        }
        seriesMenuButton.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(20)
            make.top.equalTo(100)
            make.left.equalTo(40)
        }
        movieMenuButton.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(20)
            make.top.equalTo(100)
            make.centerX.equalTo(self)
        }
        categoryMenuButton.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(20)
            make.top.equalTo(100)
            make.right.equalTo(-40)
        }
        signButton.snp.makeConstraints { make in
            make.width.height.equalTo(30)
            make.right.equalTo(-20)
            make.top.equalTo(50)
        }
        myContentsButton.snp.makeConstraints { make in
            make.width.equalTo(110)
            make.height.equalTo(50)
            make.left.equalTo(20)
            make.top.equalTo(backgroundImage.snp.bottom).offset(-50)
        }
        playButton.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(30)
            make.centerX.equalTo(self)
            make.centerY.equalTo(myContentsButton).offset(-10)
        }
        infoButton.snp.makeConstraints { make in
            make.width.equalTo(110)
            make.height.equalTo(50)
            make.right.equalTo(-20)
            make.top.equalTo(myContentsButton)
        }
        korTopSeriesLabel.snp.makeConstraints { make in
            make.width.equalTo(self)
            make.height.equalTo(25)
            make.left.equalTo(8)
            make.top.equalTo(myContentsButton.snp.bottom).offset(10)
        }
        onePoster.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(110)
            make.left.equalTo(20)
            make.top.equalTo(korTopSeriesLabel.snp.bottom).offset(8)
        }
        oneImage.snp.makeConstraints { make in
            make.width.height.equalTo(onePoster).multipliedBy(0.5)
            make.left.equalTo(onePoster.snp.left).offset(-20)
            make.bottom.equalTo(onePoster.snp.bottom)
        }
        twoPoster.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(110)
            make.left.equalTo(onePoster.snp.right).offset(30)
            make.top.equalTo(korTopSeriesLabel.snp.bottom).offset(8)
        }
        twoImage.snp.makeConstraints { make in
            make.width.height.equalTo(onePoster).multipliedBy(0.5)
            make.left.equalTo(twoPoster.snp.left).offset(-20)
            make.bottom.equalTo(onePoster.snp.bottom)
        }
        threePoster.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(110)
            make.left.equalTo(twoPoster.snp.right).offset(30)
            make.top.equalTo(korTopSeriesLabel.snp.bottom).offset(8)
        }
        threeImage.snp.makeConstraints { make in
            make.width.height.equalTo(onePoster).multipliedBy(0.5)
            make.left.equalTo(threePoster.snp.left).offset(-20)
            make.bottom.equalTo(onePoster.snp.bottom)
        }
    }
    
}
