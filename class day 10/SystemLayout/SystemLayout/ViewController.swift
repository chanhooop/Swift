//
//  ViewController.swift
//  SystemLayout
//
//  Created by 이찬호 on 2021/07/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfUserId: UITextField!
    @IBOutlet weak var tfUserPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnOK(_ sender: UIButton) {
        if tfUserId.text == "aaa" && tfUserPassword.text == "1111"{
            
            
            //prepare 대신 struct를 만들어서 내용 이동 가능
            Share.userID = tfUserId.text!
            
            // 버튼이 아니라 뷰컨트롤러로 세그를 연결해주려면 self.performSegue로 하기
            self.performSegue(withIdentifier: "afterChecking", sender: self)
            
        }else{
            let idAlert = UIAlertController(title: "경고", message: "ID나 암호가 불일치 합니다!", preferredStyle: .alert)
            let idAction = UIAlertAction(title: "Yes", style: .default, handler: nil)
            idAlert.addAction(idAction)
            present(idAlert, animated: true, completion: nil)
        }
    }
    
}

