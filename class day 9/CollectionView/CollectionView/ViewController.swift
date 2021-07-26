//
//  ViewController.swift
//  CollectionView
//
//  Created by 이찬호 on 2021/07/26.
//

import UIKit

var list = ["유비","관우","장비","조조","여포","동탁","초선","손견","장양","손책"]

class ViewController: UIViewController {
    // Cell이 아니라 Clloection View를 연결 시켜야한다!!
    @IBOutlet weak var colletionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        colletionView.delegate = self
        colletionView.dataSource = self
        
    }
    //--------------------중요!!!!--------------------------
    // 라이프사이클때문에  viewWillAppear이 있어야지 다시 실행이 된다!! viewDidLoad 는 최초 실행시에만 작동하기 때문에
    override func viewWillAppear(_ animated: Bool) {
        colletionView.reloadData()
    }
    //------------------------------------------------------
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sgDetail"{
            let cell = sender as! CollectionViewCell
            let indexPath = self.colletionView.indexPath(for: cell)
            let detailView = segue.destination as! DetailViewController
            detailView.receiveItems(list[indexPath!.row])
        }
    }

    

} //ViewController

// 두가지를 같이 선언해줘도 된다
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    //return형식이 UICollectionViewCell 타입이다
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell
        cell.backgroundColor = .lightGray //셀 배경색
        cell.lblHuman.text = list[indexPath.row]
        cell.lblHuman.backgroundColor = .yellow // 글자 배경색
        return cell
    }
    
}

//Cell Layout 정의
extension ViewController: UICollectionViewDelegateFlowLayout{
    
    // 위 아래 간격 주기(minimumLineSpacing)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    // 옆 간격 (minimumitemSpacing)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    //cell 사이즈 (옆 라인을 고려하여 설정 sizeforIte)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 3등분하영 배치, 옆 간격이 1이므로 1을 빼줌
        let width = collectionView.frame.width / 3 - 1
        let size = CGSize(width: width, height: width)
        return size
    }
}






