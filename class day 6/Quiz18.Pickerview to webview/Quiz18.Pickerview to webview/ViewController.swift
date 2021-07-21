//
//  ViewController.swift
//  Quiz18.Pickerview to webview
//
//  Created by 이찬호 on 2021/07/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var pickerWeb: UIPickerView!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    var arrayWebSiteName = ["네이버","구글","다음"]
    var arrayWebSiteAddress = ["www.naver.com","www.google.com","www.daum.net"]
    
    var maxArrayNum = 0
    let viewColumn = 1
    
    var selectAddress = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        maxArrayNum = arrayWebSiteAddress.count
        
        //피커뷰 설정
        pickerWeb.dataSource = self
        pickerWeb.delegate = self
        
        // 웹뷰설정
        loadWebPage(url: "https://www.naver.com")
        myWebView.navigationDelegate = self
        
    }
    
    func loadWebPage(url: String) {
        print(url)
        let myUrl = URL(string: url) // --> 신호 보내기
        let myRequest = URLRequest(url: myUrl!) // <-- 신호 받아오기
        myWebView.load(myRequest)
    }
    
    func checkUrl(url: String) -> String{
        print(url)
        var strUrl = url
        strUrl = "http://\(strUrl)"
        print(strUrl)
        return strUrl
    }

} // ViewController


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
    // pickerview에 Title 입히기(title 치면나옴)
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       // return arrayWebSiteAddress[row]
        return arrayWebSiteName[row]
    }
    
//PickerView에 Image 선택 (select 치면나옴)
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectAddress = arrayWebSiteAddress[row]
        print(selectAddress)
        loadWebPage(url: checkUrl(url: selectAddress))
    }
    
}



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


