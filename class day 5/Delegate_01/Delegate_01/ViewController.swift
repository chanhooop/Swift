//
//  ViewController.swift
//  Delegate_01
//
//  Created by 이찬호 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //extention 한걸 deliegate로 연결시키는 개념
        tfInput.delegate = self
        //extention -> deliegate -> self
        
    }

    @IBAction func btnAction(_ sender: UIButton) {
        lblResult.text = tfInput.text
        tfInput.text = ""
    }
    
} // ViewController



// viewcontroller 바깥에서 익스텐션을 써주어야한다!!
extension ViewController: UITextFieldDelegate{

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        lblResult.text = tfInput.text
        return true
    }


}
