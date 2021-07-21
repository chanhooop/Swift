//
//  ViewController.swift
//  Quiz13.Page Control
//
//  Created by 이찬호 on 2021/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblNum: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var arrayNums = [1,2,3,4,5,6,7,8,9,10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblNum.text = String(arrayNums[0])
        
        pageControl.numberOfPages = arrayNums.count // --> 점 총 숫자
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green //--> 전체 점 색깔
        pageControl.currentPageIndicatorTintColor = UIColor.red //-->현재 점 색
    }

    @IBAction func pageAction(_ sender: UIPageControl) {
        lblNum.text = String(arrayNums[pageControl.currentPage])
    }
    
    func resulNum(num: Int){
        let strNum = NSMutableAttributedString(string: String(num))
        strNum.addAttributes(.color, range: <#T##NSRange#>)
        if num % 2 == 0{
            
        }else{
            
        }
    }
    
}

