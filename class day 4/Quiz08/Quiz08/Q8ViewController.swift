//
//  ViewController.swift
//  Quiz08
//
//  Created by 조은빈 on 2021/07/20.
//

import UIKit

class Q8ViewController: UIViewController {

    @IBOutlet weak var Img: UIImageView!
    @IBOutlet weak var text: UILabel!

    let interval = 3.0
//    let timeSelector : Selector = #selector(ViewController.updateTime)
    
    var imgFlower = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Img.image = UIImage(named: imgFlower[0])
        
        
//        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeselector, userInfo: nil, repeats: true)
        
    }

//    @objc func updateTime(){
//        let date = NSData()
//        let formatter = DateFormatter()
//
//
//        formatter.locale = Locale(identifier: "ko")
//        formatter.dateFormat = "ss"
//    }

}

