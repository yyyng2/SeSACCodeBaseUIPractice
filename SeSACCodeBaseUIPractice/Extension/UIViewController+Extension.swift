//
//  UIViewController+Extension.swift
//  SeSACCodeBaseUIPractice
//
//  Created by Y on 2022/08/20.
//

import Foundation
import UIKit

extension UIViewController{
    
    enum TransitionStyle{
        case present
        case push
    }
    
    func transitionView<T: UIViewController>(storyboard: String, viewCotroller vc: T, transitionStyle: TransitionStyle){
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: T.reuseIdentifier) as? T else {return}
        switch transitionStyle{
        case .present:
//            rootViewController?.present(vc, animated: true)
            self.present(vc, animated: true)
        case .push:
//            rootViewController?.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
