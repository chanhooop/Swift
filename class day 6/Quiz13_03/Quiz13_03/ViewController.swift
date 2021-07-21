//
//  ViewController.swift
//  Quiz13_03
//
//  Created by 이찬호 on 2021/07/21.
//

import UIKit
import WebKit
class ViewController: UIViewController {
    
    
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var arrayWebSite = ["https://www.naver.com", "https://www.google.com", "https://www.daum.net"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebPage(url: arrayWebSite[0])
        
        pageControl.numberOfPages = arrayWebSite.count // --> 점 총 숫자
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green //--> 전체 점 색깔
        pageControl.currentPageIndicatorTintColor = UIColor.red //-->현재 점 색
    }

    @IBAction func pageAction(_ sender: UIPageControl) {
        loadWebPage(url: arrayWebSite[pageControl.currentPage])
    }
    
    //웹페이지 띄워주는 함수
    func loadWebPage(url: String) {
        let myUrl = URL(string: url) // --> 신호 보내기
        let myRequest = URLRequest(url: myUrl!) // <-- 신호 받아오기
        myWebView.load(myRequest)
    }
}

