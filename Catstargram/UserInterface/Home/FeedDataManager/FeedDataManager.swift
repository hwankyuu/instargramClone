//
//  FeedDataManager.swift
//  Catstargram
//
//  Created by 이환규 on 2022/04/16.
//

import Alamofire

class FeedDataManager {
    func feedDataManager(_ parameters : FeedAPIinput, _ viewController : HomeViewController) {
        AF.request("https://api.thecatapi.com/v1/images/search", method: .get, parameters: parameters).validate().responseDecodable(of:
        [FeedModel].self) { response in
            switch response.result {
            case .success(let result):
                viewController.sucessAPI(result)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
