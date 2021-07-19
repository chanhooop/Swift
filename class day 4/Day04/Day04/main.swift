//
//  main.swift
//  Day04
//
//  Created by 이찬호 on 2021/07/19.
//

import Foundation

// 함수
// 함수 정의에 쓰이는 변수는 Argument
func interSum(a: Int, b: Int) -> Int{
    return a + b
}
// 불러쓰는 변수는 parameter
print(interSum(a: 5, b: 8))


func great(person:String) -> String {
    let greeting = "Hello, \(person)!"
    return greeting
}
print(great(person: "anna"))


//argument가 없는 함수
func sayHelloWorld() -> String{
    return "Hello, world!"
}
print(sayHelloWorld())


// _ 는 파라미터 값을 숨길수 있다 , 우편번호 zipCode: String = zipCode를 우편번호로 띄운다
func buildAddress(name: String,  address: String, city: String, 우편번호 zipCode: String, country: String? = "USA") -> String {
    return """
        \(name)
        \(address)
        \(city)
        \(zipCode)
        \(country ?? "")
        """
}
print(buildAddress(name: "유비", address: "중국", city: "상하이", 우편번호: "123", country: "China"))
print(buildAddress(name: "장비", address: "중국", city: "상하이", 우편번호: "234"))
//print(buildAddress(name: "장비", address: "중국", city: "상하이", 우편번호: "234"), country: nil)

//----------------------------------------------------------------------

// 가변 매개변수 // Argument에 ...(범위연산자)를 넣어주면 리스트로 출력된다
func sayHelloFriends(me: String, friend: String...) -> String {
    return "Hello \(friend)! I'm \(me)."
}
print(sayHelloFriends(me: "초선", friend: "손견","손책"))


//---------------------------------------

//복수의 값을 반환하는 함수
// return 값을 튜플로 지정해주면 필요에 따라서 return 값을 선택 가능함!!
func getCountry() -> (dialCode: Int, isoCode: String, name: String) {
    let country = (dialCode: 82, isoCode: "kr", name: "Korea")
    return country
}
let ret = getCountry()
print(ret)  // -->
print(ret.dialCode)

//---------------------------------------
// 시작 숫자 부터 끝 숫자까지의 합계를 구하는 함수
// 1) for문
func addRange(start: Int, end: Int) -> Int {
    var result = 0
    for i in start...end{
        result += i
    }
    return result
}

// 2) while문
//func addRange2(start: Int, end: Int) -> Int {
//    while  {
//        <#code#>
//    }
//}

print(addRange(start:1, end:100))
print("1부터 100까지의 합은 \(addRange(start: 1, end: 100))입니다.")


// -----------------------------------------------------------

// overloading : 함수의 이름은 중복되도 parameter의 갯수로 구분이 가능

// 도형의 면적과 둘레를 구하는 함수
// 원
func shape(_ r: Double){
    let pi = 3.14
    let area = pi * r * r
    let border = 2 * pi * r
    print("원 : \(area),\(border)")
}

// 직사각형
func shape(_ w: Int, _ h: Int) {
    let area = w * h
    let border = (w + h) * 2
    print("직사각형 : \(area),\(border)")
}
// 직각 삼각형
func shape(_ p: Int, _ b: Int, _ h: Int) {
    let area = p * b / 2
    let border = p + b + h
    print("직각 삼각형: \(area),\(border)")
}

shape(5)
shape(5,6)
shape(5,7,8)

/*
 Class : 전통적인 OOP관점에서의 클래스
 - 단일 상속
 - property
 - constructor
 - method
 - 참조 타입 선언 (Call by refernece)
 - ios는 클라스로 구성되어있다
 
 
 Struct
 - 상속 불가
 - property
 - constructor
 - method
 - 값 타입 선언(Call by value)
 
 */

// -------------------------------------------------------
// Class와 Struct의 비교
struct  ValueType {
    var property = 1
}

class ReferenceType{
    var property = 1
}

//
let firstStructInstance: ValueType = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("first : \(firstStructInstance.property)")
print("second : \(secondStructInstance.property)")


let firstClassInstancne: ReferenceType = ReferenceType()
var secondClassInstance = firstStructInstance
secondStructInstance.property = 2

print("first : \(firstClassInstancne.property)")
print("second : \(secondClassInstance.property)")


// -------------------------------------------------------









