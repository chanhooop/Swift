//
//  EditViewController.swift
//  Navigation
//
//  Created by 이찬호 on 2021/07/22.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var lblWay: UILabel!
    @IBOutlet weak var tfMessage: UITextField!
    @IBOutlet weak var lblOnOff: UILabel!
    @IBOutlet weak var swIsOn: UISwitch!
    
    var textWayValue: String = "" // 세그경로 받는 변수
    var textMessaage: String = ""
    
    var isOn: Bool = false
    
    var delegate: EditDelegate?  //옵셔널 중요!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblWay.text = textWayValue
        tfMessage.text = textMessaage
        
        swIsOn.isOn = isOn
        if isOn{
            lblOnOff.text = "On"
        }else{
            lblOnOff.text = "Off"
        }
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil{
            delegate?.didMessageEditDone(self, message: tfMessage.text!)
            delegate?.didImageOnOffDone(self, isOn: isOn)
        }
        navigationController?.popViewController(animated: true) //pop은 맨뒤에것부터 지우는기능, 화면이 위에 쌓인거를 지워주는 기능이다.
    }
    
    @IBAction func swImageOff(_ sender: UISwitch) {
        if sender.isOn{
            isOn = true
            lblOnOff.text = "On"
        }else{
            isOn = false
            lblOnOff.text = "Off"
        }
    }
    

} //ViewController

// EditDelegate 프로토콜을 익스텐션 해준다
//extension ViewController: EditDelegate{
//    func didMessageEditDone(_ controller: EditViewController, message: String) {
//        tfMessage.text = message
//    }
//    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool) {
//        if isOn{
//            imgView.image = imgOn
//            self.isOn = true
//        }else{
//            imgView.image = imgOff
//            self.isOn = false
//        }
//    }
//}
