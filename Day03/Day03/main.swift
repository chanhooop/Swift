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






















































