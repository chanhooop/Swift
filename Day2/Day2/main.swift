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

//var int1: Int = Int(str2!)!
//
//print(int1 + 10)


// 비교 연산자
print(1 == 1)

//Tuple 에서의 비교 연산
print((1,"zebra") < (2,"apple"))
print((3,"appl") < (3, "bird"))

// 삼항 조건 연산자
let contentHeight = 40
let hasHeader = true

let rowHeight = contentHeight + (hasHeader ? 50 : 20)
print(rowHeight)







