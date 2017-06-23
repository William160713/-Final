//
//  AlamoFireViewController.swift
//  三餐選擇器
//
//  Created by suwen-liang on 2017/6/23.
//  Copyright © 2017年 suwen-liang. All rights reserved.
//

import UIKit
import Alamofire

class AlamoFireViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        alamoFireProcess.progress = 0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBOutlet weak var alamoFireImage: UIImageView!
    
    
    @IBOutlet weak var alamoFireProcess: UIProgressView!
    
    @IBOutlet weak var alamoFireLabel: UILabel!
    
    @IBAction func alamoFireSwitch(_ sender: UISwitch) {
        
        
        
        if sender.isOn == true {
        
            
                alamoFireLabel.text = "已下載"
                
            
            Alamofire.request("http://pic.pimg.tw/aling5888/1367425874-1230345628.jpg?v=1367425875").downloadProgress(closure: { (progress) in
                print(progress.fractionCompleted)
                self.alamoFireProcess.progress = Float(progress.fractionCompleted)
                
            }).responseData { (response) in
                print(response.result)
                print(response.result.value!)
                
                if let data = response.result.value {
                    self.alamoFireImage.image = UIImage(data: data)
                }
                
            }
            
            
            
        }
            
        else {
            
            if alamoFireProcess.progress == 0 {
                alamoFireLabel.text = "未下載"
            }
            
            
        }

    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
