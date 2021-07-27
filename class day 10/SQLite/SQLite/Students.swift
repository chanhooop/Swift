//
//  Students.swift
//  SQLite
//
//  Created by 이찬호 on 2021/07/27.
//

import Foundation

class  Students {
    var id: Int
    var name: String?  //null 값 포함하는 건 옵셔널(?)붙여줌
    var dept: String?
    var phone: String?
    
    // 생성자
    init(id: Int, name: String?, dept: String?, phone: String?) {
        self.id = id
        self.name = name
        self.dept = dept
        self.phone = phone
    }
}
