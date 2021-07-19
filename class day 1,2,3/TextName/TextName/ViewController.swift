//
//  ViewController.swift
//  TextName
//
//  Created by 조은빈 on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblMessage.text = "환영합니다."
    }
    
    @IBAction func btnSend(_ sender: Any) {
        
        if tfName.text?.isEmpty == true{
            lblMessage.text = "텍스트를 입력하세요"
        }
//        if tfName.text?.count == 0 {
//            lblMessage.text = "텍스트를 입력하세요"
//        }
        else{
            lblTitle.text = "Welcome! \(tfName.text!)"
            lblMessage.text = "텍트스를 추가했습니다."
        }
    }
    

    @IBAction func btnClear(_ sender: Any) {
        lblTitle.text = "Welcome!"
        tfName.text?.removeAll()
        lblMessage.text = "화면 초기상태 입니다."
    }
    
    
}

