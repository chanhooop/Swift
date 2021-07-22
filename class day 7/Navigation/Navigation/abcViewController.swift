//
//  abcViewController.swift
//  Navigation
//
//  Created by 이찬호 on 2021/07/22.
//

import UIKit

class abcViewController: UIViewController {

    @IBOutlet weak var tfMessage: UITextField!
    
    var textMessage: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfMessage.text = textMessage
        
    }
    


}
