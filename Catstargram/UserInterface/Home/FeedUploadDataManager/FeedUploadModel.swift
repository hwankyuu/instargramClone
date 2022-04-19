//
//  FeedUploadModel.swift
//  Catstargram
//
//  Created by 이환규 on 2022/04/17.
//

struct FeeduploadModel : Decodable {
    var isSuccess : Bool
    var code : Int
    var message : String
    var result : FeedUploadResult?
}

struct FeedUploadResult : Decodable {
    var postIdx :  Int?
}
