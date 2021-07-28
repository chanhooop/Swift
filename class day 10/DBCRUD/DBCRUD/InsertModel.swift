//
//  InsertModel.swift
//  DBCRUD
//
//  Created by 이찬호 on 2021/07/28.
//

import Foundation


class InsertModel: NSObject{

    var urlPath = "http://192.168.1.21:8080/ios/studentInsert_ios.jsp"
    
    func InsertItems(code: String, name: String, dept: String, phone: String) -> Bool{
        var result: Bool = true
        let urlAdd = "?code=\(code)&name\(name)&dept=\(dept)&phone=\(phone)"
        urlPath = urlPath + urlAdd
        
        //한글 url encoding
        urlPath = urlPath.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        
        
        
        let url: URL = URL(string: urlPath)!
        let defaultSession = URLSession(configuration: URLSessionConfiguration.default)
        let task = defaultSession.dataTask(with: url){(data, response, error) in
            if error != nil{
                print("Failed to Insert data")
                result = false
            }else{
                print("Data is inserted")
                result = true
            }
            
        }
        task.resume()
        return result
    }
    
}
