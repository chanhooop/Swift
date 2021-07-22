//
//  ViewController.swift
//  TabBar
//
//  Created by 이찬호 on 2021/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnGoImageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1 // tabBar에서 이동시키는 버튼
    }
    
    @IBAction func btnGoDatePicker(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
}

