//
//  ViewController.swift
//  Quiz32
//
//  Created by 이찬호 on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfStartNum: UITextField!
    @IBOutlet weak var tfEndNum: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.text = ""
    }

    @IBAction func btnResultSum(_ sender: Any) {
        let strStart = tfStartNum.text!
        let strEnd = tfEndNum.text!

        let intStrt = Int(strStart)!
        let intEnd = Int(strEnd)!
        
        calc(intStrt, intEnd)
        
        }
        
    } //btnResultSum
    
    func calc(_ num1:Int, _ num2:Int) {
        if num1 - num2 >= 0{
            lblResult.text = "시작숫자를 끝숫자보다 작게 적으시오"
        }else{
            for i in num1...num2{
                lblResult.text = String(i)
            }
            
    }
    
}

