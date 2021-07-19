//
//  ViewController.swift
//  HelloWorld
//
//  Created by 조은빈 on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblHello: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblHello.text = "Hello World!"
    }


}

