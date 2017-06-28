//
//  OtherViewController.swift
//  三餐選擇器
//
//  Created by suwen-liang on 2017/6/27.
//  Copyright © 2017年 suwen-liang. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift
import MessageUI

class OtherViewController: SlideMenuController,MFMailComposeViewControllerDelegate{

    
     //傳送意見
    @IBAction func sendEmailToMe(_ sender: Any) {
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            
            self.present(mailComposeViewController, animated: true, completion: nil)
            
            
        } else {
            self.showSendMailAlert()
        }
        
    }
    
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["fghtgb456852@gmail.com"])
        mailComposerVC.setSubject("關於App的意見")
        mailComposerVC.setMessageBody("請在這寫下你寶貴的意見吧！", isHTML: true)
        
        
        return mailComposerVC
    }
    
    
    
    
    func showSendMailAlert() {
        
        let myAlert = UIAlertController(title: "警告", message: "Email無法傳送，請確認網路狀況之後再試一次", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil)
        
        myAlert.addAction(okAction)
        present(myAlert, animated:true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    
    
    //SlideMenu
    
    @IBAction func openSlideMenu(_ sender: Any) {
        
        self.slideMenuController()?.openLeft()
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let lvc = self.storyboard?.instantiateViewController(withIdentifier: "SlideLeftViewController") as! SlideLeftViewController
        self.slideMenuController()?.leftViewController = lvc
        self.slideMenuController()?.addLeftGestures()
        SlideMenuOptions.rightViewWidth = 50
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
