//
//  File.swift
//  Animation2
//
//  Created by Alan Ulises on 31/08/24.
//

import Foundation
import UIKit

extension CGColor {
    var UIColor : UIKit.UIColor {
        return UIKit.UIColor(cgColor: self)
    }
}

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        set { layer.cornerRadius = newValue }
        get { layer.cornerRadius }
    }
    
    @IBInspectable var masksToBounds: Bool {
        set { layer.masksToBounds = newValue }
        get { layer.masksToBounds }
    }
        
    @IBInspectable var borderWidth: CGFloat {
        set { layer.borderWidth = newValue }
        get { layer.borderWidth }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set { layer.borderColor = newValue?.cgColor }
        get { layer.borderColor?.UIColor }
    }
    
    @IBInspectable var shadowColor: UIColor? {
        set { layer.shadowColor = newValue?.cgColor }
        get { layer.shadowColor?.UIColor }
    }
    
    @IBInspectable var shadowOpacity: Float {
        set { layer.shadowOpacity = newValue }
        get { layer.shadowOpacity }
    }
    
    @IBInspectable var shadowOffset: CGSize {
        set { layer.shadowOffset = newValue }
        get { layer.shadowOffset }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
        set { layer.shadowRadius = newValue }
        get { layer.shadowRadius }
    }
}
