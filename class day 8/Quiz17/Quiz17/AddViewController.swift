//
//  AddViewController.swift
//  Quiz17
//
//  Created by 이찬호 on 2021/07/23.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var tfAddname: UITextField!
    var ImageName = ["cart.png", "clock.png", "pencil.png"]
    var imageArray = [UIImage?]() //이미지 생성자
    var maxArrayNum = 0
    var selectNum = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        maxArrayNum = ImageName.count
        
        // 이미지파일로 배열에 넣기
        for i in 0..<maxArrayNum{
            let image = UIImage(named: ImageName[i])
            imageArray.append(image)
        }
        
        imgView.image = imageArray[0]
        
        // print(imageArray.count)
        
        pickerImage.dataSource = self
        pickerImage.delegate = self
        

    }
    
    
    
    @IBAction func btnAction(_ sender: UIButton) {
        //TableViewController로 보내주기
        items.append(tfAddname.text!)
        itemsImageFile.append(ImageName[selectNum])
        navigationController?.popViewController(animated: true)
        print(ImageName[selectNum])
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension AddViewController: UIPickerViewDataSource{
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return maxArrayNum
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
}

extension AddViewController: UIPickerViewDelegate{

    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 30, height: 30) // 이미지 뷰의 프레임 크기 설정
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectNum = row
        imgView.image = imageArray[row]
    }
}
