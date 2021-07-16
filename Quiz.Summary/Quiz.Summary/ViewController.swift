//
//  ViewController.swift
//  Quiz.Summary
//
//  Created by 이찬호 on 2021/07/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblClassName: UILabel!
    @IBOutlet weak var tfScore: UITextField!
    @IBOutlet weak var tfSummary: UITextField!
    
        var classnum = 0
        var className = ["국어 점수", "영어 점수", "수학 점수", "요약"]
        var score: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblClassName.text = className[0]
        
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        guard let strScore = tfScore.text else { return }
        
        var sum: Int
        
        for i in score {
            
        }
        
        classnum += 1
        if classnum == className.count {
            classnum = 0
            lblClassName.text = className[classnum]
            score.removeAll()
            
        }else if classnum == className.count - 1 {
            tfScore.isHidden = true
            tfSummary.text = "총점은어쩌구"
            
        }

            tfScore.text = ""
            lblClassName.text = className[classnum]
            score.append(Int(strScore)!)
    } //btnCalc
    
}

