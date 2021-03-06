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

// 범위 연산자
// 닫힌 범위 연산자
for i in 1...10{
    print(i)
}

var sum: Int = 0
for i in 1...10{
    sum += i
}

print("1~10의 합계는 \(sum) 입니다.")

for i in 1...9{
    print("5 x \(i) = \(i*5)")
}

for i in 1..<10{
    print("5 x \(i) = \(i*5)")
}


let names = ["Anna", "Alex", "Brian", "jack"]
for i in 0..<names.count{
    print("person \(i+1) is called \(names[i])")
}

// Optional
// : 값이 있으수도 있고, 없을 수도 있음
// : nil값을 포함할수도 있고, 포함 안할수도 있음 // ! or ? 둘다 사용가능
var constantNum: Int? = 100
constantNum = nil
var constantNum2: Int! = 100
print(constantNum2!)
print(constantNum2 + 10) //다른 정수값과 같이 사용하면 자동으로 옵셔날이 벗겨짐

//Optional Unwrapping
var myName: String? = nil

// Optional Binding
if let name: String = myName{
    print(name)
}else{
    print("myName is nil")
}

//Optional Unwrapping
var yourName: String! = nil

// Optional Binding
if let name: String = yourName{
    print(name)
}else{
    print("myName is nil")
}



var myName2: String? = "James"
var yourName2 : String! = nil

if let name = myName2, let friend = yourName2{
    print("\(name) and \(friend)")
}  //and조건으로 yourName이 nil값으로 출력이 되지 않는다


// Force Unwrapping
print(myName2!)
myName2 = nil
print(myName2 as Any)



// 기본적으로 swift에서 if for collection array func 이 제일 중요


// collection : 여러값들을 묶어서 하나의 변수로 사용
/*
 Array : 순서가 있는 리스트 컬렉션
 Dictionary : Key와 Value의 쌍으로 이루어진 컬렉션
 Set : 순서가 없고 멤버가 유일한 컬렉션, 집합연산
 */

// Array
// 빈 Array 생성
// var intVariable: Array<Int> = Array<Int>()
//var intVariable: [Int] = [Int]()
var intVariable: [Int] = []  // -->  세가지 방법중 이렇게 가장 많이 사용
intVariable.append(1)
intVariable.append(10)
intVariable.append(100)
print(intVariable)

print(intVariable.contains(100))  // --> true or false 값으로 출력
print(intVariable.contains(90))

print(intVariable[0])
print(intVariable[0...2][0]) // -> 0~2번째 데이터중에 0번째값 출력

intVariable.remove(at: 0) // ->제거
intVariable.removeLast()
intVariable.removeAll()
print(intVariable)

























































































