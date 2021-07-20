//
//  ViewController.swift
//  Quiz.PickerView
//
//  Created by 이찬호 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblDan: UILabel!
    @IBOutlet weak var pickerViewDan: UIPickerView!
    @IBOutlet weak var tvDan: UITextView!
    
    let ArrayDan = Array<Int>(2...9)
    var maxArrayNum = 0
    var viewColumn = 1
    var dan = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        maxArrayNum = ArrayDan.count
        
        
        pickerViewDan.dataSource = self
        pickerViewDan.delegate = self
       
    }

}

extension ViewController: UIPickerViewDataSource{
    //pickerView의 컬럼 갯수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return viewColumn
    }
    // 출력할 이미지 파일 갯수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return maxArrayNum
    }
    
}

extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> Int? {
            return ArrayDan[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        dan = ArrayDan[row]
    }
}
