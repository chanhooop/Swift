//
//  ViewController.swift
//  Hybrid
//
//  Created by 이찬호 on 2021/07/21.
//

import UIKit
import WebKit // <<<<<<<  웹뷰하려면 웹키트임포트 중요!!!

class ViewController: UIViewController {

    @IBOutlet weak var tfUrl: UITextField!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebPage(url: "https://www.naver.com")
        
        
        // 익스텐션 연결 , viewDidLoad에서만 켜주면된다
        myWebView.navigationDelegate = self
        
    } //viewDidLoad
    
    
    //웹페이지 띄워주는 함수
    func loadWebPage(url: String) {
        let myUrl = URL(string: url) // --> 신호 보내기
        let myRequest = URLRequest(url: myUrl!) // <-- 신호 받아오기
        myWebView.load(myRequest)
    }
    
    
    @IBAction func btnGo(_ sender: UIButton) {
        // hasPrefix, hasSuffix, contains
        let myUrl = checkUrl(url: tfUrl.text!.trimmingCharacters(in: .whitespaces))
        tfUrl.text = ""
        loadWebPage(url: myUrl)
        
    }
    
    // 함수로 go버튼 기능 만들어주기
    func checkUrl(url: String) -> String{
        print(url)
        var strUrl = url
        let flag = strUrl.hasPrefix("http://")
        if !flag{
            strUrl = "http://\(strUrl)"
        }
        print(strUrl)
        return strUrl
    }
    
    @IBAction func btnGoogle(_ sender: UIButton) {
        loadWebPage(url: "http://www.google.com")
    }
    
    @IBAction func btnDaum(_ sender: UIButton) {
        loadWebPage(url: "http://www.daum.net")
    }
    
    // String 을 이용한 웹페이지
    @IBAction func btnHtml(_ sender: UIButton) {
        
        //<meta name="viewport" content="width=device-width, initial-scale=1.0"> //html에서 viewport설정을 해주어야 디바이스에 맞춰서 나옴
        let htmlString = """
            <html>
                <head>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                </head>
                <body>
                    <h1>HTML String</h1>
                    <p>String 변수를 이용한 웹페이지</p>
                    <p><a href ="http://jtbc.joins.com">JTBV</a>로 이동</p>
                </body>
            <html>
            """
        myWebView.loadHTMLString(htmlString, baseURL: nil)
    }
    
    // 파일을 이용한 웹페이지
    // 파일 가져오기!!
    @IBAction func btnFile(_ sender: UIButton) {
        let filePath = Bundle.main.path(forResource: "htmlView", ofType: "html")
        let myUrl = URL(fileURLWithPath: filePath!)
        let myRequest = URLRequest(url: myUrl)
        myWebView.load(myRequest)
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        myWebView.stopLoading()
    }
    
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
    
    
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
        myWebView.goBack()
    }
    
    @IBAction func btnGoForward(_ sender: Any) {
        myWebView.goForward()
    }
    
} // ViewController



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





// 키패드 리턴눌렀을 때 고버튼기능 만들어보기
extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return true
    }
}
























