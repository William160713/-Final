

import UIKit

import UserNotifications
import AVFoundation
import MessageUI
import FirebaseCore

import CoreData
import Alamofire
import FirebaseAuth









class ViewController: UIViewController, UITextFieldDelegate,MFMailComposeViewControllerDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    

    
     
   

    
       





    override func viewDidLoad() {
      
        super.viewDidLoad()
        
   
         
    }
    
  
   

    
 
   


    
   //以下實作按下按鈕會推薦餐點的功能（早餐午餐晚餐）
    
    
    @IBAction func breakFast(_ sender: Any) {
        
        let breakFastVariable = arc4random_uniform(9)
       
        if breakFastVariable == 0 {
            meal.text = "三明治"
            mealPhoto.image = UIImage.init(named:"三明治")
        } else if  breakFastVariable == 1 {
            meal.text = "漢堡"
            mealPhoto.image = UIImage.init(named:"漢堡")
        } else if  breakFastVariable == 2 {
            meal.text = "豆漿"
            mealPhoto.image = UIImage.init(named:"豆漿")
        } else if  breakFastVariable == 3 {
            meal.text = "包子"
            mealPhoto.image = UIImage.init(named:"包子")
        }else if  breakFastVariable == 4 {
            meal.text = "饅頭"
            mealPhoto.image = UIImage.init(named:"饅頭")
        }else if  breakFastVariable == 5 {
            meal.text = "燒餅"
            mealPhoto.image = UIImage.init(named:"燒餅")
        }else if  breakFastVariable == 6 {
            meal.text = "蛋餅"
            mealPhoto.image = UIImage.init(named:"蛋餅")
        }else if  breakFastVariable == 7 {
            meal.text = "蘿蔔糕"
            mealPhoto.image = UIImage.init(named:"蘿蔔糕")
        }else if  breakFastVariable == 8 {
            meal.text = "吐司"
            mealPhoto.image = UIImage.init(named:"吐司")
        }
    }
    
    
    @IBAction func lunch(_ sender: Any) {
    
        let lunchAndDinner = arc4random_uniform(10)+9
        
        if lunchAndDinner == 9 {
            meal.text = "蒜泥白肉飯"
            mealPhoto.image = UIImage.init(named:"蒜泥白肉飯")
        } else if  lunchAndDinner == 10 {
            meal.text = "三寶飯"
            mealPhoto.image = UIImage.init(named:"三寶飯")
        } else if  lunchAndDinner == 11 {
            meal.text = "海南雞飯"
            mealPhoto.image = UIImage.init(named:"海南雞飯")
        } else if  lunchAndDinner == 12 {
            meal.text = "韓式烤肉飯"
            mealPhoto.image = UIImage.init(named:"韓式烤肉飯")
        }else if  lunchAndDinner == 13 {
            meal.text = "滷雞腿飯"
            mealPhoto.image = UIImage.init(named:"滷雞腿飯")
        }else if  lunchAndDinner == 14 {
            meal.text = "控肉飯"
            mealPhoto.image = UIImage.init(named:"控肉飯")
        }else if  lunchAndDinner == 15 {
            meal.text = "海鮮丼"
            mealPhoto.image = UIImage.init(named:"海鮮丼")
        }else if  lunchAndDinner == 16 {
            meal.text = "壽司"
            mealPhoto.image = UIImage.init(named:"壽司")
        }else if  lunchAndDinner == 17 {
            meal.text = "叉燒飯"
            mealPhoto.image = UIImage.init(named:"叉燒飯")
        }else if  lunchAndDinner == 18 {
            meal.text = "三杯雞"
            mealPhoto.image = UIImage.init(named:"三杯雞")
        }else if  lunchAndDinner == 18 {
            meal.text = "蔥爆牛肉飯"
            mealPhoto.image = UIImage.init(named:"蔥爆牛肉飯")
        }else if  lunchAndDinner == 18 {
            meal.text = "炒飯"
            mealPhoto.image = UIImage.init(named:"炒飯")
        }else if  lunchAndDinner == 19 {
            meal.text = "炸蝦飯"
            mealPhoto.image = UIImage.init(named:"炸蝦飯")
        }else if  lunchAndDinner == 20 {
            meal.text = "陽春麵"
            mealPhoto.image = UIImage.init(named:"陽春麵")
            
        }
        
        
    }
    
    
  
    @IBAction func dinner(_ sender: Any) {
        
        
        
        let lunchAndDinner = arc4random_uniform(12)+9
        
        if lunchAndDinner == 9 {
            meal.text = "蒜泥白肉飯"
            mealPhoto.image = UIImage.init(named:"蒜泥白肉飯")
        } else if  lunchAndDinner == 10 {
            meal.text = "三寶飯"
            mealPhoto.image = UIImage.init(named:"三寶飯")
        } else if  lunchAndDinner == 11 {
            meal.text = "海南雞飯"
            mealPhoto.image = UIImage.init(named:"海南雞飯")
        } else if  lunchAndDinner == 12 {
            meal.text = "韓式烤肉飯"
            mealPhoto.image = UIImage.init(named:"韓式烤肉飯")
        }else if  lunchAndDinner == 13 {
            meal.text = "滷雞腿飯"
            mealPhoto.image = UIImage.init(named:"滷雞腿飯")
        }else if  lunchAndDinner == 14 {
            meal.text = "控肉飯"
            mealPhoto.image = UIImage.init(named:"控肉飯")
        }else if  lunchAndDinner == 15 {
            meal.text = "海鮮丼"
            mealPhoto.image = UIImage.init(named:"海鮮丼")
        }else if  lunchAndDinner == 16 {
            meal.text = "壽司"
            mealPhoto.image = UIImage.init(named:"壽司")
        }else if  lunchAndDinner == 17 {
            meal.text = "叉燒飯"
            mealPhoto.image = UIImage.init(named:"叉燒飯")
        }else if  lunchAndDinner == 18 {
            meal.text = "三杯雞"
            mealPhoto.image = UIImage.init(named:"三杯雞")
        }else if  lunchAndDinner == 18 {
            meal.text = "蔥爆牛肉飯"
            mealPhoto.image = UIImage.init(named:"蔥爆牛肉飯")
        }else if  lunchAndDinner == 18 {
            meal.text = "炒飯"
            mealPhoto.image = UIImage.init(named:"炒飯")
        }else if  lunchAndDinner == 19 {
            meal.text = "炸蝦飯"
            mealPhoto.image = UIImage.init(named:"炸蝦飯")
        }else if  lunchAndDinner == 20 {
            meal.text = "陽春麵"
            mealPhoto.image = UIImage.init(named:"陽春麵")
            
        }else if  lunchAndDinner == 21 {
            meal.text = "宮保雞丁"
            mealPhoto.image = UIImage.init(named:"宮保雞丁")
            
        }

    }
    
   
    
    @IBOutlet weak var meal: UILabel!
    
    @IBOutlet weak var mealPhoto: UIImageView!
    


  
   

    //通知
    

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func notificationButton(_ sender: Any) {
        
        let date = datePicker.date
        let calendar = Calendar.current
        let components = calendar.dateComponents([ .hour, .minute],from: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching:
            components, repeats: true)
        
        let content = UNMutableNotificationContent()
        content.body = "不知道要吃什麼嗎？趕快來這看看吧！"
        content.badge = 1
        content.sound = UNNotificationSound.default()
        
        let request = UNNotificationRequest(identifier:
            "notification1", content: content,trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    
    @IBAction func noNotification(_ sender: Any) {
       
        
        let center = UNUserNotificationCenter.current()
      
        center.removeAllPendingNotificationRequests()
        
        }
 
    
    //Alamofire
    
    
    
    
    
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
    
    
  
    //取用相機
    @IBOutlet weak var imagePicked: UIImageView!
  
    

    @IBAction func openCameraButton(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated:true, completion: nil)
        }
        
     
    }
    
    //把照片顯示在螢幕上
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imagePicked.image = pickedImage
            dismiss(animated: true, completion: nil)
        }
    }
    

    @IBAction func openPhotoLibraryButton(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated:true, completion: nil)
            
        }
       
    }
    
    
    
    
    
    
    
    @IBAction func saveButton(_ sender: Any)
    
    {
        let imageData = UIImageJPEGRepresentation(imagePicked.image!, 0.6)
        let compressedJPGImage = UIImage(data: imageData!)
        UIImageWriteToSavedPhotosAlbum(compressedJPGImage!, nil, nil, nil)
        
        let alert = UIAlertController(title: "儲存相片 ",message: "儲存成功",preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "儲存", style: .default)
        
        alert.addAction(saveAction)
        
        present(alert, animated: true)
    }


    @IBAction func backToTabBar(_ sender: Any) {
        
        if let tabViewController = storyboard?.instantiateViewController(withIdentifier: "myTabBar") as? UITabBarController {
          self.present(tabViewController, animated:true, completion: nil)
        }
       
    }


    //CoreData



    @IBOutlet weak var tableView: UITableView!
   
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Food")
        do {
            foods = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }

    
    @IBAction func addName(_ sender: Any) {
        
        let alert = UIAlertController(title: "新名單",
                                      message: "加入新名單",
                                      preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "儲存", style: .default) { [unowned self] action in
            
            guard let textField = alert.textFields?.first,
                let nameToSave = textField.text else {
                    return
            }
            
            self.save(name: nameToSave)
            self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "取消",
                                         style: .default)
        
        alert.addTextField()
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
        
        
    }
    
    
        
    func save(name: String) {
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "cell")
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Food",
                                                in: managedContext)!
        
        let food = NSManagedObject(entity: entity,
                                     insertInto: managedContext)
        
        food.setValue(name, forKeyPath: "name")
        
        do {
            try managedContext.save()
            foods.append(food)
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
}
    
    

    //實作CoreDataTableView
    
    var foods: [NSManagedObject] = []
    
  
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let food = foods[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                                 for: indexPath)
        cell.textLabel?.text = food.value(forKeyPath: "name") as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        if editingStyle == .delete {
            let food = foods[indexPath.row]
            managedContext.delete(food)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
        }
        tableView.reloadData()
    }
    
    
    
    

}








