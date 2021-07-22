//
//  ViewController.swift
//  Quiz15.Navigation Control
//
//  Created by 이찬호 on 2021/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    let imgOn = UIImage(named: "lampOn.png")
    let imgOff = UIImage(named: "lampOff.png")
    let imgRed = UIImage(named: "lampRed.png")
    
    var isOn = true
    var isRed = false
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = imgOn
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let lampViewController = segue.destination as! LampViewController
        
        lampViewController.isOn = isOn
        lampViewController.isRed = isRed
        lampViewController.deligate = self

    }

} // ViewController

// EditDelegate 프로토콜을 익스텐션 해준다 // v
extension ViewController: EditDeligate{
    func didImageOnOffDone(_ controller: LampViewController, isOn: Bool, isRed: Bool) {
        if isOn{
            if isRed{
                imgView.image = imgRed
            }else{
                imgView.image = imgOn
            }
        }else{
            imgView.image = imgOff
        }
    }
}
