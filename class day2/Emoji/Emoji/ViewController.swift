//
//  ViewController.swift
//  Emoji
//
//  Created by 이찬호 on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblEmoji: UILabel!
    
    var arrEmoji = ["😆","🥰","😆","🥰","😆","🥰"]
    var index: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblEmoji.text = arrEmoji[index]
        
    }

    @IBAction func btnPlay(_ sender: UIButton) {
        index += 1
        if index == arrEmoji.count {
            index = 0
        }
        lblEmoji.text = arrEmoji[index]
    }
    
    @IBAction func btnPreview(_ sender: UIButton) {
    }
    
}

