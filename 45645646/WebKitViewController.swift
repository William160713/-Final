//
//  WebKitViewController.swift
//  三餐選擇器
//
//  Created by suwen-liang on 2017/6/18.
//  Copyright © 2017年 蘇文良. All rights reserved.
//

import UIKit
import WebKit

class WebKitViewController: UIViewController,WKNavigationDelegate {
    
     var webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        web()
        
        webView.navigationDelegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func web() {
        let url = URL(string: "https:www.google.com/")
        
        let configuration = WKWebViewConfiguration()
        webView = WKWebView(frame: view.bounds, configuration: configuration)
        view.addSubview(webView)
        webView.load(URLRequest(url:url!))
        
    }
    
    
    
    //Delegate
    
    //開始的時候呼叫
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
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
