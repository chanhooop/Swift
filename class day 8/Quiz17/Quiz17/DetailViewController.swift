//
//  DetailViewController.swift
//  Quiz17
//
//  Created by 이찬호 on 2021/07/23.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var lblText: UILabel!
    
    var receiveText = ""
    var receiveImageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgView.image = UIImage(named: receiveImageName)
        lblText.text = receiveText
        
    }
    
    func receiveItems(_ Text: String,_ ImageName: String){
        print(Text)
        print(ImageName)
        receiveText = Text
        receiveImageName = ImageName
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
