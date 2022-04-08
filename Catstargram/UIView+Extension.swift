//
//  UIView+Extension.swift
//  Catstargram
//
//  Created by 이환규 on 2022/04/08.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {   // 모따기 
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
