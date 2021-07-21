//
//  ViewController.swift
//  Quiz13.pagecontrolweb
//
//  Created by 이찬호 on 2021/07/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var lblWebSiteName: UILabel!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    var arrayWebSiteName:[(String,String)] = [("http://www.naver.com","www.naver.com"),("http://www.google.com","www.google.com"),("http://www.daum.net","www.daum.net")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebPage(url: arrayWebSiteName[0].0)
        lblWebSiteName.text = arrayWebSiteName[0].1
        
        myWebView.navigationDelegate = self
        
        pageControl.numberOfPages = arrayWebSiteName.count // --> 점 총 숫자
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green //--> 전체 점 색깔
        pageControl.currentPageIndicatorTintColor = UIColor.red //-->현재 점 색
    }

    @IBAction func pageAction(_ sender: UIPageControl) {
        loadWebPage(url: arrayWebSiteName[pageControl.currentPage].1)
    }
    
    func loadWebPage(url: String) {
        print(url)
        let myUrl = URL(string: url) // --> 신호 보내기
        let myRequest = URLRequest(url: myUrl!) // <-- 신호 받아오기
        myWebView.load(myRequest)
    }
    
} //ViewController


//웹뷰 인디케이터 익스텐션
extension ViewController: WKNavigationDelegate{
    
    // Indicator 시작
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false // - 히든시켜놓은걸 보이게 하기
    }
    // Indicator 종료
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    //Error발생시
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    
} // extension, WKNavigationDelegate
