//
//  ViewController.swift
//  MultiLine
//
//  Created by 이찬호 on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //textView 수정 못하게하기
        tvResult.isEditable = false // --> Read Only
        
    }

    @IBAction func btnAppend(_ sender: UIButton) {
        
       let strInput = tfInput.text!.trimmingCharacters(in: .whitespacesAndNewlines) //--> trim하기 , 빈칸데이터는 제외시키기
        
        // 조건을 거꾸로 쓰려면 앞에 느낌표 붙이기(strInput 이 비어있지 않을때)
        if !strInput.isEmpty{
            tvResult.text += tfInput.text! + "\n"
        }
        
    }
    

} // ViewController

