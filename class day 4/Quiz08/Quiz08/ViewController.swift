//
//  ViewController.swift
//  Quiz08
//
//  Created by 조은빈 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Img: UIImageView!
    @IBOutlet weak var text: UILabel!

    let interval = 3.0
    let timeSelector : Selector = #selector(ViewController.updateTime)
    
    var imgFlower = [Flower_01.png]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @objc func updateTime{
        let date = NSData()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "ss"
        
        
    }

}

