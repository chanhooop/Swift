//
//  ViewController.swift
//  Quiz.alarm alertMessage
//
//  Created by 이찬호 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblCurruntTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let interval = 1.0
    let timeselector: Selector = #selector(ViewController.updateTime)
    
    var alarm = ""
    var alarmCheck = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPickerTime.text = "시간을 선택하세요"
                
        // 1초마다 updatetime함수를 실행시키는 타이머
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeselector, userInfo: nil, repeats: true)

    }
    //실시간 현재 시간
    @objc func updateTime(){
        let date = NSDate() // Next Step의 약자
        let formatter = DateFormatter()
        let alarmFormatter = DateFormatter()
        var nowAlarm = ""
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"   //EEE 는 요일
        lblCurruntTime.text = "현재시간: \(formatter.string(from: date as Date))"
        
        alarmFormatter.locale = Locale(identifier:  "ko")
        alarmFormatter.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        
        nowAlarm = "\(alarmFormatter.string(from: date as Date))"
        
        if nowAlarm == alarm {
            if alarmCheck != alarm{
                let alarmAlert = UIAlertController(title: "알람", message: "설정된 시간입니다.", preferredStyle: .alert)
                let alarmAction = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: { [self]ACTION in alarmCheck = nowAlarm})
                alarmAlert.addAction(alarmAction)
                present(alarmAlert, animated: true, completion: nil)
            }

        }

    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        // 선택한 시간 정의
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm" // 24시간용 시간은 HH
        lblPickerTime.text = "선택시간 : \(formatter.string(from: datePickerView.date))"
        alarm = "\(formatter.string(from: datePickerView.date))"
        
    }

    
}


