//
//  ViewController.swift
//  Map
//
//  Created by 이찬호 on 2021/07/23.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    // 37.50184227626714, 127.02526529720232,
    
    @IBOutlet weak var lovatonGo: UISegmentedControl!
                            //MK는 import를 시켜야한다
    @IBOutlet weak var myMap: MKMapView!
    @IBOutlet weak var addr1: UILabel!
    @IBOutlet weak var addr2: UILabel!
    
    let myLoc = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLoc.delegate = self
        myLoc.requestWhenInUseAuthorization() // -> 승인 허용 문구 받아서 처리하는 부분
        myLoc.startUpdatingLocation() // -> GPS 좌표 받기 시작
        
        myMap.showsUserLocation = true
        
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
        
        let addrLoc = CLLocation(latitude: lat, longitude: lon)
        var txt2 = ""
        
                                                                        // closure형식
        CLGeocoder().reverseGeocodeLocation(addrLoc, completionHandler: {place, error in
            let pm = place!.first
            txt2 = pm!.country! // 국가
            txt2 += " " + pm!.locality! //시도
            txt2 += " " + pm!.thoroughfare! // 동
            self.addr2.text = txt2
        })
        
        addr1.text = txt1
        setPoint(pLoc, txt1, txt2)
    }
    
    func setPoint(_ loc: CLLocationCoordinate2D, _ txt1: String, _ txt2: String){
        let pin = MKPointAnnotation()
        
        pin.coordinate = loc
        pin.title = txt1
        pin.subtitle = txt2
        
        myMap.addAnnotation(pin)
    }

    @IBAction func locationGo(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            myLoc.startUpdatingLocation()
        }else if sender.selectedSegmentIndex == 1{
            mapMove(37.65243153, 127.0276397, "둘리 뮤지엄")
        }else if sender.selectedSegmentIndex == 2{
            mapMove(37.57244171, 126.9595412, "서대문 형무소 역사관")
        }
    }
    
    
} //ViewController


// GPS 익스텐션
//myLoc = CLLocationManager()가 호출시 자동 실행 / 그래서 viewDidLoad 위에 위치
extension ViewController: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let lastLoc = locations.last // 마지막 위치,
        // 지도보기
        mapMove((lastLoc?.coordinate.latitude)!, (lastLoc?.coordinate.longitude)!, "현재 위치")
        myLoc.stopUpdatingLocation() // 좌표 받기 중지
        
        
    }
}
