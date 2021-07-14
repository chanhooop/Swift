//
//  main.swift
//  Day01
//
//  Created by 조은빈 on 2021/07/14.
//

import Foundation

//comment
/*
 comment
 화면 출력
 */

//문자 출력
print("안녕하세요")

print(1234)

//게산 출력
print(123+456)

/*
 상수와 변수의 작명규칙
 - Camel Case : function, method, variable, constant
 ex) studentName, studentAge...
 
 -Pascal Case : class, struct, enum, extension, ...
 ex) Student, Product
 
 - Snake Case : underbar 로 연결하여 사용
 
 - 대소문자 구분
 - 첫글자를 숫자나 특수문자로 시작하면 안되나 underbar(_)로 시작 가능 (특수용도)
 
 */

// 상수 : 한번 선언된 값에 대해 변경이 불가능 let으로 쓰인다,
/*
 let <variabel name> : <type> = <value>
 */
var intLetNum1: Int = 200
let intLetNum2 = 100
let intLetNum3: Int
intLetNum3 = 200
intLetNum1 = 2000 //intLetNum1이 다른 명칭으로 가면 var로 바뀜 let은 final같은 효과라

let sum: Int
sum = intLetNum1 + intLetNum2
//sum = intLetNum2 + intLetNum3  // sum은 let 형식이라 중복으로 사용불가

var nickName: String
nickName = "유비"
//nickName = 123  // 타입선언이 안되더라도 다르면 에러 뜸

var aNum = 9, bNum = 10

/*
 문자열 보관법 (String Interpolation)
 */

let studentName = "홍길동"
print(type(of: studentName))

// 출력방법
print("name : " + studentName)
print("name : ", studentName)
print("name : \(studentName)") //이것이 string interpolation

let age : Int = 10
print("저는 \(age)살 입니다.")
print("저의 형은 \(age + 4) 살 입니다.")

var name1 = "유비"
var age1 = 34
var gender = "남자"

print("회원 이름은 \(name1)이고 나이는 \(age1)이며 성별은 \(gender)입니다.")
//회원 이름은 유비이고 나이는 34이며 성별은 남자입니다.

// Data Type

//Bool
var someBool:Bool = true

//Int
var somINt: Int = -100
somINt = 100_000 //10만에 슁표표시 _ 로

//Float
var  someFloat = 3.134

//Double
var someDouble: Double = 3.12

//숫자 Type변환
let doubleNum = 4.99999
print(Int(doubleNum))
//print(Int(doubleNum.rounded())

// Character
var someCharacter: Character = "a"
someCharacter = "😀"
print(someCharacter)

//String
var somString:String = "😄"
print(somString)

let temp = "b"
print(type(of: temp)) //기본적으로 string형식

var someString = """
    1234
    abcd
    가나다라
"""
//ddddddd
print(somString)














