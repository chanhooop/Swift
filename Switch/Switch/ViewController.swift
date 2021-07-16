//
//  ViewController.swift
//  Switch
//
//  Created by 이찬호 on 2021/07/16.
//

import UIKit




class ViewController: UIViewController {
    @IBOutlet weak var tfKor: UITextField!
    @IBOutlet weak var tfMath: UITextField!
    @IBOutlet weak var tfEng: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        
        guard let strKor = tfKor.text else { return }
        guard let strMath = tfMath.text else { return }
        guard let strEng = tfEng.text else { return }
        
        let avg:Double = Double((Int(strKor)! + Int(strMath)! + Int(strEng)!) / 3)
        
        switch avg {
        case 90...100:
            lblResult.text = "평균은 \(String(format:"%.2f", avg))이고 A등급은 입니다."
        case 80...90:
            lblResult.text = "평균은 \(String(format:"%.2f", avg))이고 B등급은 입니다."
        case 70...80:
            lblResult.text = "평균은 \(String(format:"%.2f", avg))이고 C등급은 입니다."
        case 60...70:
            lblResult.text = "평균은 \(String(format:"%.2f", avg))이고 D등급은 입니다."
        case 0...60:
            lblResult.text = "평균은 \(String(format:"%.2f", avg))이고 E등급은 입니다."
        default:
            lblResult.text = "평균은 \(String(format:"%.2f", avg))이고 E등급은 입니다."
        }
        
        
        
        
    }
    
}

