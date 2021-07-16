//
//  main.swift
//  Day03
//
//  Created by 이찬호 on 2021/07/16.
//

import Foundation

//Dictionary
// Key와 Value로 구성됨

// var scoreDictionary: Dictionary<String, Int> = [String: Int]()
var scoreDictionary: [String: Int] = [:]
scoreDictionary["유비"] = 100
scoreDictionary["관우"] = 90
scoreDictionary["장비"] = 80
print(scoreDictionary)  // 딕셔너리는 순서와 상광없이 출력 키값이 중요!

// 초기값을 가지는 Dictionary
let initializedDictionary: [String: String] = ["name":"James", "gender":"male"]


// Set
// Set은 집합연산에 사용되고, 중복 데이터를 적용하지 않는다.

let oddDigits: Set = [1,3,5,7,9,9,9,9,9,9,9,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumbers: Set = [2,3,4,5,7]

print(oddDigits.union(evenDigits).sorted()) // >>> union 은 합집합
// 순서와 상관없이 출력되고 중복데이터는 하나만 출력 // .sorted 를 사용하면 순서대로 정렬

//교집합
print(oddDigits.intersection(evenDigits).sorted()) //intersection 은 교집합

//차집합
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted()) // subtracting 은 차집합

// Set의 동등 비교
let houseAnimals: Set = ["dog", "cat"]
let farmAnimals: Set = ["cow", "chicken", "sheep"]
let cityAnimals: Set = ["duck", "rabbit"]

print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals))

print("-----------------------------------------------------")

// If
var isCar = true
var isNew = true
// if문에서 ','는 '&&'와 같은 and 문
if isCar, isNew{
    print("New Car")
}

isNew = false
if isCar, isNew{
    print("New Car")
}else{
    print("Old Car")
}

print("========================================")


// Switch 조건문
// Befor Switch
let personAge = 14
if personAge < 14{
    print("baby")
}else if personAge < 3{
    print("tddler")
}else if personAge < 5 {
    print("preschooler")
}else if personAge < 13{
    print("gradeschooler")
}else if personAge < 18{
    print("teen")
}else{
    print("adult")
}

// After usin Switch statement
switch personAge{
case 0..<1:
    print("baby")
case 1..<3:
    print("tddler")
case 3..<5:
    print("preschooler")
case 5..<13:
    print("gradeschooler")
case 13..<18:
    print("teen")
default:
    print("adult")
}
//---------------------------
let someInteger = 123456

switch someInteger{
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}
//--------------------------
print(Int.max) // 정수의 최댓값

let aCharacter: Character = "a"

switch aCharacter{
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}

//----------------------------
// 국어, 영어, 수학 점수로 총점 평균을 구하고 등급을 정하기
let name = "유비"
let kor = 91
let eng = 97
let math = 95

var tot = 0
var avg: Double = 0

tot = kor + eng + math
avg = Double(tot) / 3

// 점수 등급 출력  -  1
var grade: String
// if문을 이용한 등급 출력
if avg >= 90{
    grade = "a"
}else if avg >= 80{
    grade = "b"
}else if avg >= 70 {
    grade = "c"
}else{
    grade = "e"
}
print(grade)

// switch case 문을 이용한 등급 출력
switch avg{
case 90...100:
    grade = "a"
case 80...90:
    grade = "b"
default:
    grade = "e"
}
print(grade)

// 삼항 연산자 등급 출력
grade = avg >= 90 ? "A" :
        avg >= 80 ? "B" :
        avg >= 70 ? "C" : "e"
print(grade)

// 배열과 반복문
print("배열과 반복믄")
var score = [90,80,70,60,0]
var level = ["a","b","c","d","e"]

for i in 0..<score.count{
    if avg >= Double(score[i]){
        grade = level[i]
        print(grade)
        break
    }
}

































































