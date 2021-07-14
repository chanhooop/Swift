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


// 문자열 수정
var variableString = "Horse"
variableString += " and carriage"
print(variableString)


var string1 = "hello"
var string2 = " there"
var welcome = string1 + string2
print(welcome)

string1.append(string2)
print(string1)


// 문자 길이
let str = "12345,67890"
print("str has \(str.count) characters")

if str.count == 0{
    print("Data가 없습니다.")
}else{
    print("Data는 \(str)입니다.")
}


// Any, nil
// Any, : Swift의 모든 타입을 지칭하는 키워드
// nil : null, Null, None

// Any
var someAny: Any = 100
someAny = "Type"
print(someAny)
someAny = 123.12
print(someAny)

var someDouble1:Double =  111.1
print(someAny as! Double + someDouble1)  // Any타입은 Any타입 끼리만 작동가능

var someNil: String? // ?가 있어야지 nil값이 들어갈수있다, 이것을 null safety / optional value
someNil = nil

// Tuple
// Tuple사용전
var dialCode = 82
var isoCode = "KR"
var contryName = "Korea"

print((dialCode, isoCode, contryName))

//Tuple사용
var country = (82, "KR", "Korea")
print(country.0, country.1, country.2)

var country1 = (dialCode1: 82, isoCode1: "KR", contryName1:"Korea")
print(country1.dialCode1, country1.isoCode1, country1.contryName1)

// Type 별칭
typealias MyInt = Int
let age2: MyInt = 20

typealias person = (name: String, height:Int, marriage: Bool)

var p1: person = ("유비", 180, true)
print(p1.name)  // ----> 유비라는 단어만 나오게 된다

// Tuple을 사용하여 직사각형의 넓이와 둘레를 출력
typealias Rectangle = (name:String, height1:Int, width1:Int, area:Int, border:Int)
var r1: Rectangle = ("직사각형", 5, 6, 0, 0)
r1.area = r1.height1 * r1.width1
r1.border = r1.area * 2
print(r1)














































































