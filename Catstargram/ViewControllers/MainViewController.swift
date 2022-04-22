//
//  ViewController.swift
//  Catstargram
//
//  Created by 이환규 on 2022/04/01.
//

import UIKit
import Lottie


class ViewController: UIViewController {
     
    var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = ""
        label.font = UIFont.boldSystemFont(ofSize: 50)
        return label
    }()
    
    let animationView: AnimationView = {
        let animView = AnimationView(name: "75229-instagram-button-flat-3d")
        animView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        
        animView.contentMode = .scaleAspectFill
        
       return animView
    }()

    // 뷰가 생성되었을때
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center

        
        
        
       // 애니메이션 실행
        animationView.play{ (finish) in
            print("애니메이션 종료")
            
            self.view.backgroundColor = .white
            
            self.animationView.removeFromSuperview()
            
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
           
//
//            guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as? LoginViewController else { return }
//            uvc.modalPresentationStyle = .fullScreen
//            self.present(uvc, animated: true)
            
            let loginboard = UIStoryboard(name: "Main", bundle: nil)
            
             let uvc = self.storyboard?.instantiateViewController(withIdentifier: "NaviConVC")
            as! UINavigationController
            
            uvc.modalPresentationStyle = .fullScreen
            
       self.present(uvc, animated: true, completion: nil)

            
            
            
            
            
    
//            let uvc = self.navigationController.present(modalPresentationStyle)
//            uvc.modalPresentationStyle = .fullScreen
//          self.present(uvc, animated: true)
//
            
            
        
        }
    }
}
//        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") else { return }
//        
//        uvc.modalPresentationStyle = .fullScreen
//        
//        self.present(uvc, animated: true)
//    }
//}
