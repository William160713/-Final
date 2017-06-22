//
//  City.swift
//  三餐選擇器
//
//  Created by 蘇文良 on 2017/4/2.
//  Copyright © 2017年 蘇文良. All rights reserved.
//

import UIKit

class City: UITableViewController,URLSessionDelegate,URLSessionDownloadDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string:"http://data.taipei/opendata/datalist/apiAccess?scope=resourceAquire&rid=c6a9e5b5-afe5-47a1-8570-f09c3007d996")
        let sessionWithConfigure = URLSessionConfiguration.default
        
        let session = URLSession(configuration: sessionWithConfigure, delegate: self, delegateQueue: OperationQueue.main)
        let dataTask = session.downloadTask(with: url!)
        dataTask.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

 
    var dataArray = [AnyObject]()
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        
       
        do {
            let dataDic = try JSONSerialization.jsonObject(with: NSData(contentsOf: location)! as Data, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String:[String:AnyObject]]
            
            dataArray = dataDic["result"]!["results"] as! [AnyObject]
            self.tableView.reloadData()
        } catch  {
            print("error!")
        }
    }
    
    
    

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "citycell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = dataArray[indexPath.row]["店名"] as? String
        return cell
    }
    
}


    
    

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


