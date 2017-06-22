//
//  PageViewController.swift
//  三餐選擇器
//
//  Created by 蘇文良 on 2017/5/16.
//  Copyright © 2017年 蘇文良. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    lazy var viewcontrollerList:[UIViewController] = {
       
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc1 = sb.instantiateViewController(withIdentifier: "Page1")
        let vc2 = sb.instantiateViewController(withIdentifier: "Page2")
        let vc3 = sb.instantiateViewController(withIdentifier: "Page3")
        
        return [vc1, vc2, vc3]
    }()
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
     
        guard let vcIndex = viewcontrollerList.index(of: viewController) else {return nil}
        let previousIndex = vcIndex - 1
        
        //index 要是正整數
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard viewcontrollerList.count > previousIndex else {
            return nil
        }


        return viewcontrollerList[previousIndex]
        
        }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
   
            guard let vcIndex = viewcontrollerList.index(of: viewController) else {return nil}
        
            let nextIndex = vcIndex + 1
            guard viewcontrollerList.count != nextIndex else {return nil}
        
        guard viewcontrollerList.count > nextIndex else {
            return nil
        }

        
        
        
        return viewcontrollerList[nextIndex]
    }
   

    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataSource = self
        if let firstViewController = viewcontrollerList.first {
            self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
        
       
        
            
        
        
        
        
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
