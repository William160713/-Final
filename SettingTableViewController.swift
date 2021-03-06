//
//  SettingTableViewController.swift
//  三餐選擇器
//
//  Created by 蘇文良 on 2017/5/17.
//  Copyright © 2017年 蘇文良. All rights reserved.
//

import UIKit
import MGSwipeTableCell
import SCLAlertView




class SettingTableViewController: UITableViewController,UISearchBarDelegate,UITextFieldDelegate {

  
    @IBOutlet weak var searchBar: UISearchBar!
    
    var filteredData  = [String]()
    var isSearching = false
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.tableView.endEditing(true)
    }
 
    
    //按下return後消失
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
   
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        searchBar.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    //UItableView是delegate 也是裝飾者模式
    // 設定選單
    
    let setting = ["使用方法","UIBezierPath","請開網路","通知", "待吃選項","WebKit展示","Alamofire下載照片"]
    let identities = ["a","b","c","d","e","f","h"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
       
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
        if isSearching {
            return filteredData.count
        }
        
       return setting.count
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        let  cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableCell", for: indexPath) as! MGSwipeTableCell
        
        cell.leftButtons = [MGSwipeButton(title: "測試", icon: UIImage(named:"check.png"), backgroundColor: .green){
             (sender: MGSwipeTableCell!) -> Bool in
            
            SCLAlertView().showInfo("嗨", subTitle: "這是SCLAlertView的示範")
            
            
            return true
            } ,MGSwipeButton(title: "示範", icon: UIImage(named:"fav.png"), backgroundColor: .red){
                (sender: MGSwipeTableCell!) -> Bool in
                
                SCLAlertView().showInfo("嗨", subTitle: "這是SCLAlertView的示範")
                
                
                return true
            }
        ]
        cell.leftSwipeSettings.transition = .rotate3D
        
        cell.rightButtons = [MGSwipeButton(title: "示範", backgroundColor: .red){
            (sender: MGSwipeTableCell!) -> Bool in
            
            SCLAlertView().showInfo("嗨", subTitle: "這是SCLAlertView的示範")
            
            
            return true
            },MGSwipeButton(title: "測試",backgroundColor: .lightGray){
                (sender: MGSwipeTableCell!) -> Bool in
                
                SCLAlertView().showInfo("嗨", subTitle: "這是SCLAlertView的示範")
                
                
                return true
            }]
        cell.rightSwipeSettings.transition = .border
        
        
        
        if isSearching {
            cell.textLabel?.text = self.filteredData[indexPath.row]
        } else {
             cell.textLabel?.text = self.setting[indexPath.row]
        }
     
        
       
        return cell
       
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text == nil || searchBar.text == "" {
            isSearching = false
            view.endEditing(true)
            tableView.reloadData()
        } else {
            isSearching = true
            
            //閉包中的參數中，$0代表第一個參數
            filteredData = setting.filter({$0 == searchBar.text})
        
            tableView.reloadData()
        }
        
    }
    
    
    //按下cell之後可以返回TableView
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
     
        
        let vcName = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
    }
    
    
   
    }






    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


