//
//  DetailViewController.swift
//  Table
//
//  Created by 이찬호 on 2021/07/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var lblItem: UILabel!
    
    var receiveItem = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblItem.text = receiveItem
    }
    
    // 함수로 값이 들어오게 해서 변수로 넣어주는 방식
    func receiveItems(_ item: String){
        receiveItem = item
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

} // DetailViewController
