//
//  ViewController.swift
//  Quiz08_PointCalculation
//
//  Created by 김민재 on 2021/07/16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldKLanguage: UITextField!
    @IBOutlet weak var labeKLanguage: UILabel!
    @IBOutlet weak var textFieldELanguage: UITextField!
    @IBOutlet weak var labelELanguage: UILabel!
    @IBOutlet weak var textFieldMath: UITextField!
    @IBOutlet weak var labelMath: UILabel!
    
    @IBOutlet weak var Summary: UILabel!
    @IBOutlet weak var labelResult: UITextView!
    
    var loop = 0
    var testPoint: [String: Int] = [:]
    
    var KPoint=0, EPoint = 0, MPoint = 0
    var sum = 0
    var avg = 0
    var PointText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonCalculater(_ sender: Any) {
        loop += 1
        switch loop {
        case 1: //국어 입력후 영어 화면
            guard Int(textFieldKLanguage.text!) != nil else {
                textFieldKLanguage.becomeFirstResponder()
                return loop = 0
            }
            KPoint = Int(textFieldKLanguage.text!)!
            nohidden(a:textFieldELanguage, b:labelELanguage, c:false)
        case 2://영어 입력후 수학 화면
            guard Int(textFieldELanguage.text!) != nil else {
                textFieldELanguage.becomeFirstResponder()
                return loop = 1
            }
            EPoint = Int(textFieldELanguage.text!)!
            nohidden(a:textFieldMath, b:labelMath, c:false)
        case 3: //수학 입력후 계산 화면
            guard Int(textFieldMath.text!) != nil else {
                textFieldMath.becomeFirstResponder()
                return loop = 2
            }
            MPoint = Int(textFieldMath.text!)!
            
            nohidden(a:textFieldMath, b:labelMath, c:true)
            Summary.isHidden = false
            labelResult.isHidden = false
            sum = KPoint + EPoint + MPoint
            avg = sum/3
            // 출력
            labelResult.text = """
            총점은 \(sum)점 입니다.
            평균은 \(avg) 입니다.
            """
            PT(text:"국어", point:KPoint)
            PT(text:"영어", point:EPoint)
            PT(text:"수학", point:MPoint)
            
        default://계산후 다시 국어 화면
            loop = 0
            textFieldKLanguage.text = ""
            textFieldELanguage.text = ""
            textFieldMath.text = ""
            nohidden(a:textFieldKLanguage, b:labeKLanguage, c:false)
        }
        
    }
    
    //각 과목
    func PT(text:String ,point:Int) {
        if point >= avg {
            labelResult.text += "\n\(text)점수는 \(point)점으로 높습니다."
        }else if point < avg {
            labelResult.text += "\n\(text)점수는 \(point)점으로 낮습니다."
        }
    }
    
    //히든
    func nohidden(a:UITextField, b:UILabel, c:Bool){
        textFieldKLanguage.isHidden = true
        labeKLanguage.isHidden = true
        textFieldELanguage.isHidden = true
        labelELanguage.isHidden = true
        textFieldMath.isHidden = true
        labelMath.isHidden = true
        Summary.isHidden = true
        labelResult.isHidden = true
        
        a.isHidden = c
        b.isHidden = c
    }
}































