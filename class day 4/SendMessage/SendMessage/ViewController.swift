//
//  ViewController.swift
//  SendMessage
//
//  Created by μ‘°μλΉ on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvMessage: UITextView!
    @IBOutlet weak var tfInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnSend(_ sender: UIButton) {
        tvMessage.text += tfInput.text! + "\n"
    }
    
    
    @IBAction func btnEmoji(_ sender: UIButton) {
        tvMessage.text?.append("π")
    }
}

