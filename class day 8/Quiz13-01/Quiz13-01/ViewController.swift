//
//  ViewController.swift
//  Quiz13-01
//
//  Created by 이찬호 on 2021/07/23.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var lblLocName: UILabel!
    @IBOutlet weak var myMap: MKMapView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    let myLoc = CLLocationManager()
    
    var locArray: [(String, Double, Double)] = [("혜화문", 37.5878892, 127.0037098), ("흥인지문", 37.5711907, 127.009506), ("창의문", 37.5926027, 126.96647771), ("숙정문", 37.5956584, 126.9810576)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // myLoc.delegate = self
        myLoc.requestWhenInUseAuthorization() // -> 승인 허용 문구 받아서 처리하는 부분
        myLoc.startUpdatingLocation() // -> GPS 좌표 받기 시작
        
        myMap.showsUserLocation = true
        
        mapMove(locArray[0].1, locArray[0].2, locArray[0].0)
        
        
        pageControl.numberOfPages = locArray.count // --> 점 총 숫자
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green //--> 전체 점 색깔
        pageControl.currentPageIndicatorTintColor = UIColor.red //-->현재 점 색
    }
    
    
    @IBAction func pageChang(_ sender: UIPageControl) {
        //mgView.image = UIImage(named: images[pageController.currentPage])  // --> pageController의 currentPage를 활용한다
//        switch pageControl.currentPage {
//        case 0:
//            mapMove(locArray[pageControl.currentPage].1, locArray[pageControl.currentPage].2, locArray[pageControl.currentPage].0)
//
//        default:
//            mapMove(locArray[pageControl.currentPage].1, locArray[pageControl.currentPage].2, locArray[pageControl.currentPage].0)
//        }
        
      
            mapMove(locArray[pageControl.currentPage].1, locArray[pageControl.currentPage].2, locArray[pageControl.currentPage].0)

 
    }
    
    
    func mapMove(_ lat: CLLocationDegrees, _ lon: CLLocationDegrees, _ txt1: String){
        // 좌표찍기
        let pLoc = CLLocationCoordinate2DMake(lat, lon)
        //배율
        let pSpan = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        
        // 좌표 정보
        let pRegion = MKCoordinateRegion(center: pLoc, span: pSpan)
        
        // 현재 지도를 좌표 정보로 보이기
         myMap.setRegion(pRegion, animated: true)
        lblLocName.text = txt1
     
        
        
        setPoint(pLoc, txt1)
    }
    
    func setPoint(_ loc: CLLocationCoordinate2D, _ txt1: String){
        let pin = MKPointAnnotation()
        
        pin.coordinate = loc
        pin.title = txt1
        
        myMap.addAnnotation(pin)
    }

    
} //ViewController

// GPS 익스텐션
//myLoc = CLLocationManager()가 호출시 자동 실행 / 그래서 viewDidLoad 위에 위치
//extension ViewController: CLLocationManagerDelegate{
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        let lastLoc = locations.last // 마지막 위치,
//        // 지도보기
//        mapMove((lastLoc?.coordinate.latitude)!, (lastLoc?.coordinate.longitude)!, "현재 위치")
//        myLoc.stopUpdatingLocation() // 좌표 받기 중지
//
//
//    }
//}

