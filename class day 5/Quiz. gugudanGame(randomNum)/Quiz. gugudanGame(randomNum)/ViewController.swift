//
//  ViewController.swift
//  Quiz. gugudanGame(randomNum)
//
//  Created by 이찬호 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfgenDan: UITextField!
    @IBOutlet weak var tfgenNum: UITextField!
    @IBOutlet weak var tfInputResult: UITextField!
    
    var answer:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        reSet()
    
        answer = calc()
    }

    @IBAction func btnOk(_ sender: UIButton) {
        if answer == tfInputResult.text{
            let alertController = UIAlertController(title: "결과!", message: "정답입니다.", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "다음 문제 진행", style: .default, handler: { [self]ACTION in reSet()})
            alertController.addAction(alertAction)
            present(alertController, animated: true , completion: nil)
        }else{
            let alertfailCon = UIAlertController(title: "결과", message: "정답이 아닙니다.", preferredStyle: .alert)
            let alertfailAc = UIAlertAction(title: "이것도 모르냐?!", style: .default, handler: {[self]ACTION in tfInputResult.text = ""})
            alertfailCon.addAction(alertfailAc)
            present(alertfailCon, animated: true, completion: nil)
        }
    }
    // 정답 계산 함수
    func calc() -> String {
        let strDan = tfgenDan.text!
        let strNum = tfgenNum.text!
        
        answer = String(Int(strDan)! * Int(strNum)!)

        return answer
    }
    // 난수 생성 함수
    func genNum() -> String {
        let strgenNum = String(Int.random(in: 1..<10))
        return strgenNum
    }
    
    func reSet() {
        tfgenDan.text = genNum()
        tfgenNum.text = genNum()
        tfInputResult.text = ""
    }
    
}

