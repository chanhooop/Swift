//
//  DetailViewController.swift
//  SQLite
//
//  Created by 이찬호 on 2021/07/27.
//

import UIKit
import SQLite3

class DetailViewController: UIViewController {
    @IBOutlet weak var tfId: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfDept: UITextField!
    @IBOutlet weak var tfTel: UITextField!
    
    var db: OpaquePointer?
    
    var receiveId: Int = 0
    var studentsList: [Students] = []
    

    
//    var receiveItem: [Students] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //SQLite 생성하기
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("StudentsData.sqlite")
        
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK{
            print("error opening database")
        }
        
        readVelue()
        
        tfId.text =  String(studentsList[0].id)
        tfName.text = studentsList[0].name
        tfDept.text = studentsList[0].dept
        tfTel.text = studentsList[0].phone

        
    }

    
    
    @IBAction func btnDelete(_ sender: UIButton) {
        tempDelete()
        tfId.text =  String(studentsList[0].id)
        tfName.text = studentsList[0].name
        tfDept.text = studentsList[0].dept
        tfTel.text = studentsList[0].phone
        
    }
    
    @IBAction func btnEdit(_ sender: UIButton) {
        tempEdit()
    }
    
    
        
        func readVelue(){
            //SQLite 생성하기
            let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("StudentsData.sqlite")
            
            if sqlite3_open(fileURL.path, &db) != SQLITE_OK{
                print("error opening database")
            }

            
            studentsList.removeAll() // 기존에 있던 배열을 초기화
            
            let queryString = "SELECT * FROM students WHERE sid = \(receiveId)"
            
            var stmt : OpaquePointer?
            
            if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error preparing select: \(errmsg)")
                return
            }
            
            while(sqlite3_step(stmt) == SQLITE_ROW){
                let id = sqlite3_column_int(stmt, 0)  //int 값 가져오기
                let name = String(cString: sqlite3_column_text(stmt, 1)) //string값 가져오기
                let dept = String(cString: sqlite3_column_text(stmt, 2)) //string값 가져오기
                let phone = String(cString: sqlite3_column_text(stmt, 3)) //string값 가져오기
                
                print(id, name, phone)
                
                studentsList.append(Students(id: Int(id), name: String(describing: name), dept: String(describing: dept), phone: String(describing: phone)))

            }
        
        }
    

    
    func tempDelete(){
        print("받은 아이디 값 \(receiveId)")
        var stmt: OpaquePointer?
        
        
        let queryString = "DELETE FROM students WHERE sid = \(receiveId)"
        
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
            return
        }
        
        
        if sqlite3_step(stmt) != SQLITE_DONE{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure inserting student: \(errmsg)")
            return
        }
        
        print("Students Delete successfully")
        
        let resultAlert = UIAlertController(title: "결과", message: "삭제 되었습니다", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: {
            ACTION in self.navigationController?.popViewController(animated: true)
        })
        resultAlert.addAction(okAction)
        present(resultAlert, animated: true, completion: nil)
    }
    
    func tempEdit(){
        var stmt: OpaquePointer?
        let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)  // 중요 한글쓰려면!!!
        
        let name = tfName.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let dept = tfDept.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let phone = tfTel.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let queryString = "UPDATE students SET sname = ?, sdept = ?, sphone = ? WHERE sid = \(receiveId)"
        
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
            return
        }
        
        if sqlite3_bind_text(stmt, 1, name, -1, SQLITE_TRANSIENT) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error binding name: \(errmsg)")
            return
        }
        
        if sqlite3_bind_text(stmt, 2, dept, -1, SQLITE_TRANSIENT) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error binding dept: \(errmsg)")
            return
        }
        
        if sqlite3_bind_text(stmt, 3, phone, -1, SQLITE_TRANSIENT) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error binding phone: \(errmsg)")
            return
        }
        
        if sqlite3_step(stmt) != SQLITE_DONE{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure inserting student: \(errmsg)")
            return
        }
        
        print("Students Delete successfully")
        
        let resultAlert = UIAlertController(title: "결과", message: "수정 되었습니다", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: {
            ACTION in self.navigationController?.popViewController(animated: true)
        })
        resultAlert.addAction(okAction)
        present(resultAlert, animated: true, completion: nil)
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
