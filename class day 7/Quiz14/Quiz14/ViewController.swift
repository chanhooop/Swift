//
//  ViewController.swift
//  Quiz14
//
//  Created by 이찬호 on 2021/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }

    @IBAction func btnGoQ6(_ sender: Any) {
        tabBarController?.selectedIndex = 1
    }
    
    
    @IBAction func btnGoQ8(_ sender: Any) {
        tabBarController?.selectedIndex = 2
    }
    
    
    @IBAction func btnGoPageControl(_ sender: Any) {
        tabBarController?.selectedIndex = 3
    }
    
}

