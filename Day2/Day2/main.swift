//
//  main.swift
//  Day2
//
//  Created by 이찬호 on 2021/07/15.
//

import Foundation
var str1: String

 str1 = "Apple"
 str1 = "Google"
// str1 = nil
print(str1)

var str2: String?
str2 = "Apple"
str2 = "Google"
str2 = "123"
//str2 = nil

var int1: Int = Int(str2!)!

print(int1 + 10)
