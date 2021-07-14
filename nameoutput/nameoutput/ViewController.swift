//
//  ViewController.swift
//  nameoutput
//
//  Created by 조은빈 on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var tfImoge: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func btnInsert(_ sender: Any) {
        let name : String = "이찬호"
        var num1 = 0
        
        tfName.text = "이찬호"
     
        
    }
    
    @IBAction func btnSmile(_ sender: Any) {
        tfImoge.text?.append("😀")
    }
    
    
}

