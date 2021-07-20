//
//  ViewController.swift
//  PickerView
//
//  Created by 이찬호 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var lblImageFileName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageFileName = ["w1.jpg", "w2.jpg", "w3.jpg", "w4.jpg", "w5.jpg", "w6.jpg", "w7.jpg", "w8.jpg", "w9.jpg", "w10.jpg"]
    
    var imageArray = [UIImage?]() //이미지 생성자
    var maxArrayNum = 0 // 출력할 이미지 파일 갯수
    let viewColumn = 1 //피커뷰의 컬럼 갯수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 미리 이미지를 배열에 다 넣어주는 작업
        maxArrayNum = imageFileName.count
        
        for i in 0..<maxArrayNum{
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        lblImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
        
        //익스텐션 연결
        pickerImage.dataSource = self  // 피커뷰 틀
        pickerImage.delegate = self // 피커뷰 기능
        
    } // viewDidLoad


}// ViewController

// 피커뷰 모양 익스텐션으로 만들어주기
extension ViewController: UIPickerViewDataSource {
    
    //pickerView의 컬럼 갯수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return viewColumn
    }
    // 출력할 이미지 파일 갯수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return maxArrayNum
    }
}

// 피커뷰 기능 익스텐션으로 만들기
extension ViewController: UIPickerViewDelegate{
    // pickerview에 Title 입히기(title)
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileName[row]
    }
    
    //PickerView에 Image 선택 (select)
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = imageFileName[row]
        imageView.image = imageArray[row]
    }
    
    
}
