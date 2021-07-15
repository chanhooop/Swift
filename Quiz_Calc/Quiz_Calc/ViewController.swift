//
//  ViewController.swift
//  Quiz_Calc
//
//  Created by 조은빈 on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfFirstNum: UITextField!
    @IBOutlet weak var tfSecondNum: UITextField!
    @IBOutlet weak var tfResultAdd: UITextField!
    @IBOutlet weak var tfResultMinus: UITextField!
    @IBOutlet weak var tfResultMultiple: UITextField!
    @IBOutlet weak var tfResultDvision: UITextField!
    @IBOutlet weak var tfResultRest: UITextField!
    @IBOutlet weak var lblText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblText.text = "숫자를 입력하세요"
        
        readOnly() //함수가져다 쓰기
        
    } // viewDidLoad

    
    // 계산하기 버튼
    @IBAction func btnCalc(_ sender: Any) {
        
        // Optional 제거 //최종 해결법
        guard let strNum1 = tfFirstNum.text else { return }
        guard let strNum2 = tfSecondNum.text else { return }
        
        if strNum1.isEmpty == true {
            tfFirstNum.becomeFirstResponder()
            lblText.text = "첫번째 숫자를 입력하세요"
        }else if tfSecondNum.text?.isEmpty == true{
            tfSecondNum.becomeFirstResponder()
            lblText.text = "두번째 숫자를 입력하세요"
        }else{
            let num1 = Int(strNum1)!
            let num2 = Int(strNum2)!
            
            calculation(num1, num2)
        } 
        
        
       /*
            찬호해결법
        let num1 = Int(tfFirstNum.text!)
        let num2 = Int(tfSecondNum.text!)
                   tfResultAdd.text = String(num1!+num2!)
                   tfResultMinus.text = String(num1!-num2!)
                   tfResultMultiple.text = String(num1! * num2!)
                   tfResultDvision.text = String(num1! / num2!)
                   tfResultRest.text = String(num1! % num2!)

         if ((num1 == nil) || (num2 == nil)) {
           lblText.text = "숫자를 제대로 입력하시오"
        */
         
        // 강사님 1차 해결법
//        if tfFirstNum.text?.isEmpty == true {
//            tfFirstNum.becomeFirstResponder()
//            lblText.text = "첫번째 숫자를 입력하세요"
//        }else if tfSecondNum.text?.isEmpty == true{
//            tfSecondNum.becomeFirstResponder()
//            lblText.text = "두번째 숫자를 입력하세요"
//        }else{
//                tfResultAdd.text = String(Int(tfFirstNum.text!)! + Int(tfSecondNum.text!)!)
//                tfResultMinus.text = String(Int(tfFirstNum.text!)! - Int(tfSecondNum.text!)!)
//                tfResultMultiple.text = String(Int(tfFirstNum.text!)! * Int(tfSecondNum.text!)!)
//            if tfSecondNum.text == "0" {
//                tfResultDvision.text = "계산불가"
//                tfResultRest.text = "계산불가"
//            }else{
//                tfResultDvision.text = String(Int(tfFirstNum.text!)! / Int(tfSecondNum.text!)!)
//                tfResultRest.text = String(Int(tfFirstNum.text!)! % Int(tfSecondNum.text!)!)
//            }
//
//            lblText.text = "잘했어요"
//        }
//
        
        
    }   //btnCalc
    
    
    //아무데나 누르면 작동하는 함수
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) // 키보드 없애기
        
    }// touchesBegan
    
    
    // 계산 결과값 read only로 처리 함수만들기
    func readOnly() {
        tfResultAdd.isUserInteractionEnabled = false  //ReadOnly 설정
        tfResultMinus.isUserInteractionEnabled = false
        tfResultMultiple.isUserInteractionEnabled = false
        tfResultDvision.isUserInteractionEnabled = false
        tfResultRest.isUserInteractionEnabled = false
    } // readOnly
    
    //계산 함수 //변수이름을 안보여주려면 '_' 를 앞에 붙여준다!!
    func  calculation(_ num1: Int, _ num2: Int) {
            tfResultAdd.text = String(num1 + num2)
            tfResultMinus.text = String(num1 + num2)
            tfResultMultiple.text = String(num1 + num2)
        if num2 == 0 {
            tfResultDvision.text = "계산불가"
            tfResultRest.text = "계산불가"
        }else{
            tfResultDvision.text = String(num1 / num2)
            tfResultRest.text = String(num1 % num2)
        }
        
        lblText.text = "참 잘했어요"
    } // calculation
    

} // viewController

