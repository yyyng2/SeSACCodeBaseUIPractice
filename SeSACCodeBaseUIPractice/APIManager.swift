//
//  APIManager.swift
//  SeSACCodeBaseUIPractice
//
//  Created by Y on 2022/08/20.
//

import Foundation

import Alamofire
import SwiftyJSON

class TrendAPIManager{
    static let shared = TrendAPIManager()
    
    private init () {}
    
    func getMedia(startPage: Int, completionHandler: @escaping (JSON) -> ()){
        
        let url = "\(EndPoint.tmdbURL)api_key=\(APIKey.TMDBKEY)&page=\(startPage)"
        
        AF.request(url, method: .get).validate(statusCode: 200..<300).responseData { response in
            switch response.result{
            case .success(let value):
                let json = JSON(value)

//                let url = URL(string: url) //입력받은 url string을 URL로 변경
//                      //main thread에서 load할 경우 URL 로딩이 길면 화면이 멈춘다.
//                      //이를 방지하기 위해 다른 thread에서 처리함.
//                      DispatchQueue.global().async { [weak self] in
//                          if let data = try? Data(contentsOf: url!) {
//                              if let image = UIImage(data: data) {
//                                  //UI 변경 작업은 main thread에서 해야함.
//                                  DispatchQueue.main.async {
//                                      self?.photoImageView.image = image
//                                  }
//                              }
//                          }
//                      }
                
                completionHandler(json)

            case .failure(let error):
                print(error)
                
            }
        }
    }
    
    func getShow(startPage: Int, completionHandler: @escaping (JSON) -> ()){
        
        let url = "\(EndPoint.popularShow)api_key=\(APIKey.TMDBKEY)&language=eko-KR&page=\(startPage)"
        
        AF.request(url, method: .get).validate(statusCode: 200..<300).responseData { response in
            switch response.result{
            case .success(let value):
                let json = JSON(value)
                
                completionHandler(json)

            case .failure(let error):
                print(error)
                
            }
        }
    }
}
