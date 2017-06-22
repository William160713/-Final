//
//  launchScreenView.swift
//  三餐選擇器
//
//  Created by 蘇文良 on 2017/6/4.
//  Copyright © 2017年 蘇文良. All rights reserved.
//

import UIKit

class launchScreenView: UIView {

    override func draw(_ rect: CGRect) {
        
     
        
        
        
        // 橢圓
        let oval = UIBezierPath(ovalIn: CGRect(x: 180, y: 100, width: 100, height: 100))
        
        //顏色設定
        UIColor.red.setFill()
        
        //內側塗滿
        oval.fill()
        
        // stroke
        UIColor.green.setStroke()
        
        // 線寬
        oval.lineWidth = 3
        // 描画
        oval.stroke()
        
        
        //正方形
        
        let rectangle = UIBezierPath(rect: CGRect(x: 100,y: 80,width: 100,height: 120))
        // stroke 色の設定
        
        UIColor.yellow.setStroke()
        
        rectangle.lineWidth = 6
       
        rectangle.stroke()
        
        
        // 矩形
        let roundRect = UIBezierPath(roundedRect: CGRect(x: 50, y: 100, width: 110, height: 150), cornerRadius: 10)
      
        // stroke 色の設定
        UIColor.green.setStroke()
        roundRect.lineWidth = 6
        roundRect.stroke()
        
        
        // 圓弧
        let arc = UIBezierPath(arcCenter: CGPoint(x:380, y:170), radius: 85,  startAngle: 0, endAngle: CGFloat(M_PI)*4/3, clockwise: true)
        // 透明色設定
        let aColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.8)
        aColor.setStroke()
        arc.lineWidth = 10
        
        
        // 設定線的模式
        let dashPattern:[CGFloat] = [ 1 , 4 ]
        arc.setLineDash(dashPattern, count: 2, phase: 0)
        arc.stroke()
    }
}
    
    


