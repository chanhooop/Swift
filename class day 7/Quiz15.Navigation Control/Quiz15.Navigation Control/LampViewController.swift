//
//  LampViewController.swift
//  Quiz15.Navigation Control
//
//  Created by 이찬호 on 2021/07/22.
//

import UIKit

class LampViewController: UIViewController {

    @IBOutlet weak var lblOnOff: UILabel!
    @IBOutlet weak var switchIsOn: UISwitch!
    @IBOutlet weak var switchIsRed: UISwitch!
    
    var isOn: Bool = true
    var isRed: Bool = false
    
    var deligate: EditDeligate?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switchIsOn.isOn = isOn
        switchIsRed.isOn = isRed
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        if deligate != nil{
            deligate?.didImageOnOffDone(self, isOn: isOn, isRed: isRed)
        }
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func swIsON(_ sender: UISwitch) {
        if sender.isOn{
            isOn = true
        }else{
            isOn = false
        }
    }
    
    @IBAction func swIsRed(_ sender: UISwitch) {
        if sender.isOn{
            isRed = true
        }else{
            isRed = false
        }
    }
    
}  //LampViewController
