//
//  TableViewController.swift
//  Table
//
//  Created by 이찬호 on 2021/07/22.
//

import UIKit

//데이터만들기 클라스 위에
// 변수 선언을 Class 정의 전에 한다
var items = ["책 구매", "철수와 약속", "스터디 준비하기"]
var itemsImageFile = ["cart.png", "clock.png", "pencil.png"]

class TableViewController: UITableViewController {

    @IBOutlet var tvListView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        // Edit버튼을 만들고 삭제 기능 추가하기, 왼쪽으로 배치
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    // viewWillAppear는 화면이 숨어있다가 나왔을 때 다시 동작하는 부분
    // viewdidload는 화면이 뜨기전에 동작하고 ciewwillappear는 화면이 뜨고 다음에 동작하는
    override func viewWillAppear(_ animated: Bool) {
        tvListView.reloadData() // table관련된 메소드들을 재구성 해주는 역할
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    //Section당 열의 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = items[indexPath.row]
        cell.imageView?.image = UIImage(named: itemsImageFile[indexPath.row])

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Table 셀 삭제하는 부분
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("Delete")
            items.remove(at: indexPath.row) // 이름배열에서 지우기
            itemsImageFile.remove(at: indexPath.row) // 이미지 배열에서 지우기
            tableView.deleteRows(at: [indexPath], with: .fade) // 화면에서보이는부분 지워주기
            
            // Delete the row from the data source
            //tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    
    // 삭제시 "Delete"를 "삭제"로 바꾸기
    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
            return "삭제"
    }
    
    

    //목록 순서 바꾸기 (이동은 배열의 insert)
    //삭제하기전에 변수에 넣고 아이템을 삭제하고 이동할곳에 변스를 넣어주는게 이동 프로세스
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        // 이동할 item의 위치
        let itemToMove = items[fromIndexPath.row]
        let itemImageToMove = itemsImageFile[fromIndexPath.row]
        
        // 이동할 item을 삭제
        items.remove(at: fromIndexPath.row)
        itemsImageFile.remove(at: fromIndexPath.row)
        
        // 해당위치로 삽입
        items.insert(itemToMove, at: to.row)
        itemsImageFile.insert(itemImageToMove, at: to.row)

    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "sgDetail"{
            // 셀정보 가져오는부분
            let cell = sender as! UITableViewCell
            let indexPath = self.tvListView.indexPath(for: cell)
            
            let detailView = segue.destination as! DetailViewController
            detailView.receiveItems(items[indexPath!.row])
        }
        
    }
    

} // TableViewController
