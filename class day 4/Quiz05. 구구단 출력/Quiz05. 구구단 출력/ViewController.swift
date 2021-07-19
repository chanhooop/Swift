//
//  ViewController.swift
//  Quiz05. 구구단 출력
//
//  Created by 이찬호 on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }


    @IBAction func btnAction(_ sender: UIButton) {
    let strInput = tfInput.text!
    
        for i in 1...9{
            tvResult.text += "\(i) X \(strInput) = \(String(Int(strInput)! * i)) \n"
        }
        
    }
    
} // ViewController

