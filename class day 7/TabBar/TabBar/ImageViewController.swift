//
//  ViewController.swift
//  ImageView
//
//  Created by 조은빈 on 2021/07/19.
//

import UIKit

class ImageViewController: UIViewController {
    
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    
    var imgOn: UIImage? // 켜진 전구 이미지
    var imgOff: UIImage? // 꺼진 전구 이미지
    
    var isZoom = false // 이미지 확대 여부 (상태변수)
    
    // 이미지 크기를 2배로
    var scale: CGFloat! = 2.0
    var newWidth: CGFloat!
    var newHeight: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //이미지 파일 준비
        imgOn = UIImage(named: "lampOn.png")
        imgOff = UIImage(named: "lampOff.png")
        
        //이미지 할당
        imgView.image = imgOff
        
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        
        
        if isZoom{
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            btnResize.setTitle("Image 확대", for: .normal) // --> 버튼 글자 바꾸기!!!!
        }else{
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            btnResize.setTitle("Image 축소", for: .normal) // --> 버튼 글자 바꾸기!!!!
            
        }
        
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        //상태변수값 반대로 만들어 주기
        isZoom = !isZoom //--> 현재 isZoom의 값을 반대로 만들어주기!! (상태변수)
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
                                    // sender.isOn 에 값이 true / false로 들어온다
        
//        if sender.isOn{
//            imgView.image = imgOn
//        }else{
//            imgView.image = imgOff
//        }
        
        switch sender.isOn {
        case true:
            imgView.image = imgOn
        default:
            imgView.image = imgOff
        }
    }
    
    @IBAction func switchImageZoom(_ sender: UISwitch) {
        
        switch sender.isOn{
        case true:
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
        default:
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
        }
    }
    
} // viewController

