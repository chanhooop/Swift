//
//  ViewController.swift
//  Quiz03
//
//  Created by 이찬호 on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfNum: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.text = "홀짝 판단 해줄게요"
        
    }//viewDidLoad
    
    @IBAction func btnEnter(_ sender: Any) {
        /*
        var message: String
        
        let checkNumber = Int(tfNum.text!) ?? 0
        if checkNumber % 2 == 0{
            message = "짝수"
        }else{
            message = "홀수"
        }
        lblResult.text = "입력하신 숫자는 \(message)입니다."
        */
        
        
    
    
    } //btnEnter
    
    func  checkNil(str: String!) {
        let check = str.trimmingCharacters(in: .whitespacesAndNewlines)  // 엔터키와 스페이스를 트리밍해서 정리해준다
    }
}

