//
//  File.swift
//
//  Copyright © 2019 pc. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable var CorenerRaduis : CGFloat {
        get { return self.layer.cornerRadius }
        set { self.layer.cornerRadius = newValue }
    }
    
    @IBInspectable var BorderColor : UIColor {
        get {return UIColor(cgColor:  self.layer.borderColor! ) }
        set { self.layer.borderColor = newValue.cgColor }
    }
    
    @IBInspectable var BorderWidth : CGFloat {
        get { return self.layer.borderWidth }
        set { self.layer.borderWidth = newValue }
    }
    @IBInspectable var IsCircle : Bool {
        get { return true }
        set { CorenerRaduis = self.frame.width / 2}

    }
}


extension UITextField {

    @IBInspectable var PlaceHolderColor : UIColor {
        get { return self.PlaceHolderColor }
        set {
            self.attributedPlaceholder =
                NSAttributedString(string: self.placeholder != nil ? self.placeholder! : "" , attributes: [ NSAttributedString.Key.foregroundColor : newValue ] )
        }
    }
    

}

//MARK:- To convert hex_color to color

//extension UIColor {
//    
//    func ColorFromHex(_ hex : String) -> UIColor {
//        
//        var hexString = hex.trimmingCharacters(in: .whitespaces).uppercased()
//        
//        if hexString.hasPrefix("#"){
//            hexString.remove(at: hexString.startIndex)
//        }
//        if hexString.count != 6 {
//            return UIColor.blue
//        }
//        
//        //  return UIColor.init(named: hexString)!
//        var rgb : UInt32 = 0
//        Scanner(string: hexString).scanHexInt32(&rgb)
//        
//        //  return UIColor
//        return UIColor.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
//                            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0 ,
//                            blue: CGFloat((rgb & 0x0000FF)) / 255.0,
//                            alpha: 1.0)
//}
//}
