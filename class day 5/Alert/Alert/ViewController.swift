//
//  ViewController.swift
//  Alert
//
//  Created by 이찬호 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lampImage: UIImageView!
    
    let imgOn = UIImage(named: "lampOn.png")
    let imgOff = UIImage(named: "lampOff.png")
    let imgRemove = UIImage(named: "lampRemove.png")
    
    var isLampOn = false // Lamp State - 램프 상태변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lampImage.image = imgOff
    }

    @IBAction func btnLampOn(_ sender: UIButton) {
        if isLampOn {
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 ON 상태입니다.", preferredStyle: .alert)
            
            let onAction = UIAlertAction(title: "네, 알겠습니다", style: .default, handler: nil)
            
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        }else{
            lampImage.image = imgOn
            isLampOn = true
        }
    }
    
    @IBAction func btnLampOff(_ sender: UIButton) {
        if isLampOn {
            let lampOffAlert = UIAlertController(title: "램프끄기", message: "램프를 끄시겠습니까?"	, preferredStyle: .alert)
            
            let offYesAction = UIAlertAction(title: "네", style: .default, handler: { [self]ACTION in
               
                    lampImage.image = imgOff
                    isLampOn = false
            
                //return lampOffYes()
            })
            let offNoAction = UIAlertAction(title: "아니오 ", style: .default, handler: nil)
            
            lampOffAlert.addAction(offYesAction)
            lampOffAlert.addAction(offNoAction)
            
            present(lampOffAlert, animated: true, completion: nil)
        }else{
            let lampOnAlert = UIAlertController(title: "램프끄기", message: "현재 OFF 상태입니다.", preferredStyle: .alert)
            
            let onAction = UIAlertAction(title: "네, 알겠습니다", style: .default, handler: nil)
            
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnLampRemove(_ sender: UIButton) {
        let lampRemoveAlert = UIAlertController(title: "램프 제거", message: "램프를 제거 할까요", preferredStyle: .alert)
        
        let lampRemoveOffAction = UIAlertAction(title: "아니오, 끕니다!", style: .default, handler: { [self]ACTION in
            lampImage.image = imgOff
            isLampOn = false
        })
        let lampRemoveOnAction = UIAlertAction(title: "아니오, 켭니다", style: .default, handler: { [self]ACTION in
            lampImage.image = imgOn
            isLampOn = true
        })
        let lampRemoveAction = UIAlertAction(title: "네, 제거합니다.", style: .default, handler: { [self]ACTION in
            lampImage.image = imgRemove
            isLampOn = false
        })
        
        lampRemoveAlert.addAction(lampRemoveOffAction)
        lampRemoveAlert.addAction(lampRemoveOnAction)
        lampRemoveAlert.addAction(lampRemoveAction)
        
        present(lampRemoveAlert, animated: true, completion: nil)
            
    }
    
    
    
//    func lampOffYes() {
//        lampImage.image = imgOff
//        isLampOn = false
//    }
   
}

