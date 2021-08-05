//
//  ShareVar.swift
//  DBCRUD
//
//  Created by 이찬호 on 2021/07/29.
//

import Foundation
class ShareVar {
    func url(fileName: String) -> String{
        let url = "http://192.168.219.123:8080/ios/\(fileName)"
        return url
    }
}
