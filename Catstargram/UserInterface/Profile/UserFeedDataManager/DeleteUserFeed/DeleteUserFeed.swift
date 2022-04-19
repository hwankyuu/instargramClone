//
//  DeleteUserFeed.swift
//  Catstargram
//
//  Created by 이환규 on 2022/04/19.
//

import Foundation

struct DeleteUserFeed: Decodable {
    let isSuccess : Bool?
    let code : Int?
    let message : String?
    let result: String?
     
}
