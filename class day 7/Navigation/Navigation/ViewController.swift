//
//  ViewController.swift
//  Navigation
//
//  Created by 이찬호 on 2021/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfMessage: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    
    let imgOn = UIImage(named: "lampOn.png")
    let imgOff = UIImage(named: "lampOff.png")
    
    var isOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = imgOn
        
    }
    
    // navigation 설정부분
    // 세그 설정 (prepare) 정보넘겨주는 부분
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController // EditViewController의 인스턴스를 만들어준다/ EditViewController도 클라스이니까
    //-->
        if segue.identifier == "editButton"{             // => identifier는 보내는 세그 이름을 나타낸다
            //textWayValue는 에디트뷰컨트롤러 클라스에 선언된 변수!
            editViewController.textWayValue = "Segue : Use Button!"
        }else{
            editViewController.textWayValue = "Segue : Use Bar Button!"
        }
        //EditViewController라는 클라스의 텍스트메세지에 여기있는 텍슽메세지를 넣어주는 역할
        editViewController.textMessaage = tfMessage.text!
        
        editViewController.delegate = self // <<<뒷 페이지에 권한을 넘겨줘야 실행을 시킨다
        
        editViewController.isOn = isOn
        // <--
        
        
        
    }
    
    


} // ViewController




// EditDelegate 프로토콜을 익스텐션 해준다 // v
extension ViewController: EditDelegate{
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        tfMessage.text = message
    }
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool) {
        if isOn{
            imgView.image = imgOn
            self.isOn = true
        }else{
            imgView.image = imgOff
            self.isOn = false
        }
    }
}
