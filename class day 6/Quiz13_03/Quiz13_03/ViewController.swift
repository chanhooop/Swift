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
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    var arrayWebSite = ["https://www.naver.com", "https://www.google.com", "https://www.daum.net"]
    //var arrayWebSite:[(Int, String)] = [(0,"https://www.naver.com"), (1,"https://www.google.com"), (2,"https://www.daum.net")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebPage(url: arrayWebSite[0])
        
        pageControl.numberOfPages = arrayWebSite.count // --> 점 총 숫자
        pageControl.currentPage = 0
        print(pageControl.currentPage)
        pageControl.pageIndicatorTintColor = UIColor.green //--> 전체 점 색깔
        pageControl.currentPageIndicatorTintColor = UIColor.red //-->현재 점 색
        
        // Activity Indicator 설정
        myWebView.navigationDelegate = self
        
        //한손가락 Gesture구성
        makeSingleTouch()
        
        
    } // 초기화면 설정 끝

    @IBAction func pageAction(_ sender: UIPageControl) {
        loadWebPage(url: arrayWebSite[pageControl.currentPage])
        print("현재 currentPage 값 \(pageControl.currentPage)")
    }
    
    //웹페이지 띄워주는 함수
    func loadWebPage(url: String) {
        let myUrl = URL(string: url) // --> 신호 보내기
        let myRequest = URLRequest(url: myUrl!) // <-- 신호 받아오기
        myWebView.load(myRequest)
    }
    
    
    func makeSingleTouch(){
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
    }
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            loadWebPage(url: arrayWebSite[pageControl.currentPage])
            
            switch swipeGesture.direction{
            case UISwipeGestureRecognizer.Direction.left:
                if arrayWebSite.count - 1 == pageControl.currentPage{
                    loadWebPage(url: arrayWebSite[0])
                    pageControl.currentPage = 0
                    print("test 0")
                }else{
                    loadWebPage(url: arrayWebSite[pageControl.currentPage + 1])
                    pageControl.currentPage = pageControl.currentPage + 1
                }
                    
                print("leftArray \(arrayWebSite.count - 1)")
                print("LeftAction \(pageControl.currentPage)")
            case UISwipeGestureRecognizer.Direction.right:
                if pageControl.currentPage == 0 {
                    loadWebPage(url: arrayWebSite[2])
                    pageControl.currentPage = 2
                }else{
                    loadWebPage(url: arrayWebSite[pageControl.currentPage - 1])
                    pageControl.currentPage = pageControl.currentPage - 1
                    print("rightAction \(pageControl.currentPage)")
                }
                    
            default:
                break
            }
        }
    }
    
} //ViewController

extension ViewController: WKNavigationDelegate{
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
}
