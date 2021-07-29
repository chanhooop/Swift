//
//  ShareVar.swift
//  ServerJson_03
//
//  Created by 이찬호 on 2021/07/29.
//

import Foundation

class ShareVar {
    func url(_ path: String) -> String{
        let url = "http://192.168.1.21:8080/ios/\(path)"
        return url
    }
}

