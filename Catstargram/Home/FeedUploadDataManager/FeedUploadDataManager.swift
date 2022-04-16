//
//  FeedUploadDataManager.swift
//  Catstargram
//
//  Created by 이환규 on 2022/04/17.
//

import Alamofire

class FeedUploadDataManager {
    func posts(_ viewController : HomeViewController, _ paramater: FeeduploadInput) {
        AF.request("https://edu-api-ios-test.softsquared.com/posts",
                   method:.post, parameters: paramater,
                   encoder: JSONParameterEncoder.default,
                   headers: nil).responseDecodable(of: FeeduploadModel.self) { response in
            switch response.result {
            case .success(let result):
                if result.isSuccess {
                    print("성공")
                } else {
                    print(result.message)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
