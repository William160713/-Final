//
//  LocationModel.swift
//  三餐選擇器
//
//  Created by suwen-liang on 2017/6/29.
//  Copyright © 2017年 suwen-liang. All rights reserved.
//

import UIKit
import Foundation

class LocationModel: NSObject {
    
    //屬性
    var name: String?
    var address: String?
    var latitude: String?
    var longitude: String?
    
    //空的建構器
    override init() {
        
    }

    init(name: String, address: String, latitude: String, longtitude: String) {
        self.name = name
        self.address = address
        self.latitude = latitude
        self.longitude = longtitude
        
    }
    
    //印出現在的狀態
    override var description: String {
        return "Name: \(name), Address: \(address), Latitude: \(latitude), Longitude: \(longitude)"
    }
    
}


protocol HomeModelProtocol: class {
    func itemsDownloaded(items: NSArray)
}


class HomeModel: NSObject, URLSessionDataDelegate {
    
    //properties
    
    weak var delegate: HomeModelProtocol!
    
    var data = Data()
    
    let urlPath: String = "https://asdfg56489.000webhostapp.com/service.php"
    
    
    func downloadItems() {
        
        let url: URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url) { (data, response, error) in
            
            if error != nil {
                print("Failed to download data")
            }else {
                print("Data downloaded")
                self.parseJSON(data!)
            }
            
        }
        
        task.resume()
    }
    
    func parseJSON(_ data:Data) {
        
        var jsonResult = NSArray()
        
        do{
            jsonResult = try JSONSerialization.jsonObject(with: data, options:JSONSerialization.ReadingOptions.allowFragments) as! NSArray
            
        } catch let error as NSError {
            print(error)
            
        }
        
        var jsonElement = NSDictionary()
        let locations = NSMutableArray()
        
        for i in 0 ..< jsonResult.count
        {
            
            jsonElement = jsonResult[i] as! NSDictionary
            
            let location = LocationModel()
            
            //the following insures none of the JsonElement values are nil through optional binding
            if let name = jsonElement["Name"] as? String,
                let address = jsonElement["Address"] as? String,
                let latitude = jsonElement["Latitude"] as? String,
                let longitude = jsonElement["Longitude"] as? String
            {
                
                location.name = name
                location.address = address
                location.latitude = latitude
                location.longitude = longitude
                
            }
            
            locations.add(location)
            
        }
        
        DispatchQueue.main.async(execute: { () -> Void in
            
            self.delegate.itemsDownloaded(items: locations)
            
        })
    }
}

