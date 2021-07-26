//
//  DetailViewController.swift
//  CollectionView
//
//  Created by 이찬호 on 2021/07/26.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblText: UILabel!
    var receiveitem = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblText.text = receiveitem
    }
    
    func receiveItems(_ item: String){
        receiveitem = item
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
