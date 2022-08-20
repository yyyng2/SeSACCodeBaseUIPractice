//
//  NewflixTabBarController.swift
//  SeSACCodeBaseUIPractice
//
//  Created by Y on 2022/08/20.
//

import UIKit

class NewflixTabBarController: UITabBarController{
    
    let vc1 = NewflixViewController()
    let vc2 = NewflixHotViewController()
    let vc3 = NewflixSearchViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTab(vc: vc1, title: "홈", image: "home.png")
        vc1.tabBarItem.selectedImage = UIImage(named: "home.fill.png")
        configureTab(vc: vc2, title: "NEW & HOT", image: "play.png")
        configureTab(vc: vc3, title: "검색", image: "magnifier.png")
        //탭바 달았더니 네비게이션 타이틀이 보임 -> 투명으로 설정
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.clear]
        
        UITabBar.appearance().tintColor = .white
        tabBar.barTintColor = .black
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.clear]
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
//        [nav1, nav2, nav3].forEach { nav in
//            nav.navigationBar.prefersLargeTitles = true
//        }
        
        setViewControllers([nav1, nav2, nav3], animated: true)
    }
    
    
    
    func configureTab(vc: UIViewController, title: String, image: String){
        vc.title = title
        vc.tabBarItem.image = UIImage(named: image)
//        vc.navigationItem.largeTitleDisplayMode = .always
       
    }
    
}
