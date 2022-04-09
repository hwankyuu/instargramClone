//
//  keyboardController.swift
//  Catstargram
//
//  Created by 이환규 on 2022/04/09.
//

import UIKit

extension UIViewController {
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){

         self.view.endEditing(true)

   }
}
//화면 터치하여 키보드 내리기
