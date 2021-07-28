//
//  ViewController.swift
//  ServerImage
//
//  Created by 이찬호 on 2021/07/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    
    var imageFileName = ["flower_01", "flower_02", "flower_03", "flower_04", "flower_05", "flower_06",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL(string: "http://192.168.1.21:8080/ios/flower_01.png")
        let data = try? Data(contentsOf: url!)
        imgView.image = UIImage(data: data!)
        
        
    }

    // 옛날 방식
    @IBAction func btnImage1(_ sender: UIButton) {
        let url: URL = URL(string: "http://192.168.1.21:8080/ios/flower_01.png")!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url){(data, response, error) in
            if error != nil{
                print("Failed to download data")
            }else{
                print("Data is downloaded")
                DispatchQueue.main.async {
                    self.imgView.image = UIImage(data: data!)
                    if let image = UIImage(data: data!){
                        if let data = image.pngData(){
                            let filename = self.getDocumentDirectory().appendingPathComponent("copy.png")
                            try? data.write(to: filename)
                        }
                    }
                }
            }
            
        }
        task.resume()
    }
    func getDocumentDirectory() -> URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    
    
    
    // 요즘방식
    @IBAction func btnImage2(_ sender: UIButton) {
        let url = URL(string: "http://192.168.1.21:8080/ios/flower_02.png")
        let data = try? Data(contentsOf: url!)
        imgView.image = UIImage(data: data!)
    }
    
    
    @IBAction func btnPreview(_ sender: Any) {
        
        for i in 0..<imageFileName.count{
        let url = URL(string: "http://192.168.1.21:8080/ios/\(imageFileName[i])")
        }
        
        
    }
    
    @IBAction func btnNextview(_ sender: Any) {
        
    }
    
    
}
















