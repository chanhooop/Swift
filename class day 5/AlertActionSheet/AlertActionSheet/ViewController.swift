//
//  ViewController.swift
//  AlertActionSheet
//
//  Created by 이찬호 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAlert(_ sender: UIButton) {
        //Controller 초기화
        let testAlert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        // AlertAction
        let actionDefault = UIAlertAction(title: "Action Default", style: .default, handler: nil)
        let actionDestructive = UIAlertAction(title: "Action Destructive", style: .destructive, handler: {ACTION in print("destructive action called.")})
        let actionCancle = UIAlertAction(title: "Cancle", style: .cancel, handler: {ACTION in print("cancle")})
        
        //Controller 와 Action결합
        testAlert.addAction(actionDefault)
        testAlert.addAction(actionDestructive)
        testAlert.addAction(actionCancle)
        //화면띄우기
        present(testAlert, animated: true, completion: nil)
    }
    
    @IBAction func btnActionSheet(_ sender: UIButton) {
        //Controller 초기화
        let testAlert = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        
        // AlertAction
        let actionDefault = UIAlertAction(title: "Action Default", style: .default, handler: nil)
        let actionDestructive = UIAlertAction(title: "Action Destructive", style: .destructive, handler: {ACTION in print("destructive action called.")})
        let actionCancle = UIAlertAction(title: "Cancle", style: .cancel, handler: {ACTION in print("cancle")})
        
        //Controller 와 Action결합
        testAlert.addAction(actionDefault)
        testAlert.addAction(actionDestructive)
        testAlert.addAction(actionCancle)
        //화면띄우기
        present(testAlert, animated: true, completion: nil)
    }
    
    
}//ViewController

