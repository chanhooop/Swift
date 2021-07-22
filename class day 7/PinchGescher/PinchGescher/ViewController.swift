//
//  ViewController.swift
//  PinchGescher
//
//  Created by 이찬호 on 2021/07/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgPinch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgPinch.image = UIImage(named: "flower_01.png")
        // Pinch Setup
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_ :)))
        self.view.addGestureRecognizer(pinch)  // view. 은 화면 전체에 대한 적용을 할때
    }
    
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer){
        imgPinch.transform = imgPinch.transform.scaledBy(x: pinch.scale, y: pinch.scale)   // 모양을 크기를 조정
        pinch.scale = 1
    }

}

