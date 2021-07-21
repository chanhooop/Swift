//
//  ViewController.swift
//  PageControl
//
//  Created by 이찬호 on 2021/07/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageController: UIPageControl!
    var images = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = UIImage(named: images[0])
        
        pageController.numberOfPages = images.count // --> 점 총 숫자
        pageController.currentPage = 0
        pageController.pageIndicatorTintColor = UIColor.green //--> 전체 점 색깔
        pageController.currentPageIndicatorTintColor = UIColor.red //-->현재 점 색
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageController.currentPage])  // --> pageController의 currentPage를 활용한다
    }
    
}

















