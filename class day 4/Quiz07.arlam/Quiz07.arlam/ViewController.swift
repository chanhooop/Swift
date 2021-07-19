//
//  ViewController.swift
//  Quiz07.arlam
//
//  Created by 조은빈 on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCurruntTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let interval = 1.0
    let timeselector: Selector = #selector(ViewController.updateTime)
    
    var alarm = ""
    
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
            let sec:Int = Int(formatter.string(from: date as Date).suffix(2)) ?? 0
            switch sec % 2 == 0 {
            case true:
                view.backgroundColor = UIColor.red
            default:
                view.backgroundColor = UIColor.blue
            }
        }else{
            view.backgroundColor = UIColor.white
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

