//
//  ViewController.swift
//  DatePicker
//
//  Created by 조은빈 on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let intervar = 1.0  // --> 1초
    let timeSelector: Selector = #selector(ViewController.updateTime) // updateTime 은 @objc func 으로 만들어 줘야함
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPickerTime.text = "시간을 선택하세요!"
        Timer.scheduledTimer(timeInterval: intervar, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        //class 생성s
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm" // 24시간용 시간은 HH
        lblPickerTime.text = "선택시간 : \(formatter.string(from: datePickerView.date))"
        
    }
    
    @objc func updateTime(){
        let date = NSDate() // Next Step의 약자
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd,EEE a hh:mm:ss"   //EEE 는 요일
        lblCurrentTime.text = "현재시간: \(formatter.string(from: date as Date))"
    }
    
    
}// ViewController

