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
    } // viewDidLoad

    
    @IBAction func btnCalc(_ sender: Any) {
        
       // let (num1, num2) = (tfFirstNum.text, tfSecondNum.text)
        let num1 = Int(tfFirstNum.text!)
        let num2 = Int(tfSecondNum.text!)
        
        if ((num1 == nil) || (num2 == nil)) {
            lblText.text = "숫자를 제대로 입력하시오"
        }else{
            tfResultAdd.text = String(num1!+num2!)
            tfResultMinus.text = String(num1!-num2!)
            tfResultMultiple.text = String(num1! * num2!)
            tfResultDvision.text = String(num1! / num2!)
            tfResultRest.text = String(num1! % num2!)
            
            lblText.text = "잘했어요"
        }
        

        
    }
    
    
    //아무데나 누르면 작동하는 함수
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) // 키보드 없애기
        
    }// touchesBegan

} // viewController

