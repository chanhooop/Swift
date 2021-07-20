//
//  main.swift
//  Day05
//
//  Created by 이찬호 on 2021/07/20.
//

import Foundation

// -----------------
// 구조체 : Structure
// : Swift에서 Data Type을 정의

// Structure 생성
struct Sample {
    var sampleProperty: Int = 10 // 가변 프로퍼티
    let fixedSampleProperty: Int = 100 // 불변 프로퍼티
    static var typeProperty: Int = 1000 // 타입 프로퍼티
    
    func instanceMethod() {
        print("instanceMethod")
    }
    
    static func typeMethod() {
        print("type method")
    }
    
}

// Structure 사용

var samp: Sample = Sample() //static은 나오지 않는다
print(samp.sampleProperty)
samp.sampleProperty = 100
print(samp.sampleProperty)

var samp1 = Sample()
print(samp.sampleProperty)

// Type Property
Sample.typeMethod()
print(Sample.typeProperty)


//---------------------------------------------------------------------------------

//학생 구조체
struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce(){
        print("학생 타입 입니다.")
    }
    
    func selfIntroduce(){
        print("저는 \(`class`)반 \(name)입니다.")
        print("저는 \(self.class)반 \(name)입니다.")
    }
}
//----->
Student.selfIntroduce()

var student: Student = Student()
student.name = "James"
student.class = "스위프트"
student.selfIntroduce()

let cathy: Student = Student()
//cathy.name = "Cathy"         // let으로는 변수에 값을 넣지 못한다
//cathy.selfIntroduce()

//------------------------------------------------------------------------


//학생 구조체
class Student1 {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce(){
        print("학생 타입 입니다.")
    }
    
    func selfIntroduce(){
 //       print("저는 \(`class`)반 \(name)입니다.")
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student1.selfIntroduce()
var student1: Student1 = Student1()

//------------


class Shape{
    let pi:Double = 3.14
    
    init() {
        print("계산시작(생성자 넣기)")
    }
    init(_ num:Double) {
        print("원의 면적은 \(2*pi*num)")
    }
    init(_ num:Int, _ num2:Int) {
        print("직사각형의 둘레는 \((num + num2) * 2) 이고 면적은 \(num * num2) 입니다.")
    }
    init(_ num:Int, _ num2:Int, _ num3:Int) {
        print("직각삼각형의 둘레는 \(num + num2 + num3)이고 면적은 \(num * num2 / 2)입니다.")
    }
    func input(_ num:Double) {
        print("원의 면적은 \(2*pi*num)")
    }
    func input(_ num:Int, _ num2:Int) {
        print("직사각형의 둘레는 \((num + num2) * 2) 이고 면적은 \(num * num2) 입니다.")
    }
    func input(_ num:Int, _ num2:Int, _ num3:Int) {
        print("직각삼각형의 둘레는 \(num + num2 + num3)이고 면적은 \(num * num2 / 2)입니다.")
    }
    
}

let sh1: Shape = Shape()
let sh2: Shape = Shape()
let sh3: Shape = Shape()

sh1.input(5) // 원의 면적과 둘레 구하기
sh2.input(5,6) // 직사각형의 면적과 둘레 ㄷ구하기
sh3.input(5, 6, 8) // 직각삼각형의 면적과 두레 구하기

let inish1: Shape = Shape(5)
let inish2: Shape = Shape(5, 6)
let inish3: Shape = Shape(5, 6, 8)
print("<-------------------->")
//생성자 쓰는 클라스
class Shape1{
    var area = 0.0
    let pi = 3.14157
    
    init() {
        print("계산시작")
    }
    
    init(radius: Double) {
        area = radius * radius * pi
        calc()
    }
    
    func input(r: Double)  {
        area = r * r * pi
        calc()
    }
    
    func calc() {
        print("원의 면적은 \(Int(area)) 입니다.")
    }
    
}

let sh4: Shape1 = Shape1()
sh4.input(r: 5.0)

let sh5: Shape1 = Shape1(radius: 5.0)


//--------------------------------------------------------------------
/*
            Extension!!!! 중요
- 구조체, 클래스, 프로토콜 타입에 새로운 기능을 추가할 수 있는 기능.
- 기존에 존재하는 기능은 재정의 할 수 없다.
- Deligate 와 함께 다닌다.
- class와 따로 존재하는게 익스텐션
 */

extension Int{
    var isEven: Bool{
        return self % 2 == 0
    }
    var isOdd: Bool{
        return self % 2 == 1
    }
}

print(1.isEven)

//--------------------------------------------------------------------------

// Closure

//함수
func sumFunction(a: Int, b: Int) -> Int{
    return a + b
}

var sumResult: Int = sumFunction(a: 10, b: 20)
print(sumResult)

//closure
var sumClosure: (Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return a + b
}

sumResult = sumClosure(10,20)
print(sumResult)

//--------------------------------------------------------------------------

// 난수 추출
print(Int.random(in: 1..<10))

func genNum() -> String {
    return String(Int.random(in: 1..<10))
}
print(genNum())
print(genNum())








