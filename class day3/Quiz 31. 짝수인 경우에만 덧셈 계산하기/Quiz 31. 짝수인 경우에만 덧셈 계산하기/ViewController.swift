//
//  ViewController.swift
//  Quiz 31. 짝수인 경우에만 덧셈 계산하기
//
//  Created by 이찬호 on 2021/07/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblComment: UILabel!
    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var tfResult: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    } //viewDidLoad

    @IBAction func btnCalc(_ sender: UIButton) {
        
        guard let strNum1 = tfNum1.text else { return }
        guard let strNum2 = tfNum2.text else { return }
        
        if strNum1 == "" {
            lblComment.text = "숫자1을 입력하세요"
        }else if strNum2 == ""{
            lblComment.text = "숫자2를 입력하세요"
        }else{
            result(strNum1, strNum2)
        }
        
    } // btnCalc
    
    //결과값을 함수로 만들기
    func result(_ strNum1:String, _ strNum2:String) {
        if ifCondition(strNum1, strNum2) {
            tfResult.text = String(Int(strNum1)! + Int(strNum2)!)
            }
        lblComment.text = "짝수만 입력하세요"
    }
    
    // if 조건만 함수로 나누기
    func ifCondition(_ strNum1:String, _ strNum2:String) -> Bool{
        if  (Int(strNum1)! % 2 == 0) && (Int(strNum2)! % 2 == 0){
            return true
        }
            return false
    } //ifCondition
    
    
}// ViewController

