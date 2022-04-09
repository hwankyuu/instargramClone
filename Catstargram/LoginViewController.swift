//
//  LoginViewController.swift
//  Catstargram
//
//  Created by 이환규 on 2022/04/04.
//

import UIKit

class LoginViewController: UIViewController {
    
    var email = String()
    var password = String()
    var userInfo: UserInfo?
    
    @IBOutlet weak var registarButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAttribute()
       
    }
    
    @IBAction func emailTextFledEditingChange(_ sender: UITextField) {
        print("호출됨")
        // 옵셔널 = ?
        // 값이 있을수도 없을수도
        let text = sender.text ?? ""
        
        self.loginButton.backgroundColor = text.isValidEmail() ? .facebookColor : .disabledButtonColor
     
        self.email = text

    }
    @IBAction func passwordTextFledEditingChange(_ sender: UITextField) {
        let text = sender.text ?? ""
        
        self.loginButton.backgroundColor = text.count > 2 ? .facebookColor : .disabledButtonColor
        
        self.password = text
    }
    
    @IBAction func loginButtonDidTap(_ sender: UIButton) {
        // 회원가입정보를 전달받아서, 그것과 textField 데이터가 일치하면,
        // 로그인이 되어야 한다.
        guard let userInfo = self.userInfo else  { return }
        if userInfo.email == self.email
                && userInfo.password == self.password {
           let vc =
            storyboard?
                .instantiateViewController(withIdentifier: "TestVC") as! TestViewController
            self.present(vc, animated: true,completion: nil)
            
        } else {
     
        }
    }
    
    @IBAction func registerButtonDidTap(_ sender: UIButton) {
        // 화면전환
        // 1 스토리보드를 생성
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // 2 뷰컨트롤러를 생성
 let registerViewController = storyboard.instantiateViewController(withIdentifier: "RegisterVC") as! RegisterViewController
        
        // 3 화면전환 메소드를 이용해서 화면을 전환
//        self.present(registerViewController, animated: true, completion: nil) //completion 필요한 동작
        self.navigationController?.pushViewController(registerViewController, animated: true)
        
        // ARC -> 강한참조 / weak self 써주면 약한참조 -> ARC 낮춰줌
        registerViewController.userInfo = { [weak self] (userInfo) in
            self?.userInfo = userInfo
        }
        
    }
    private func setupAttribute() {
        // registerButton
         
        let text1 = "계정이 없으신가요?"
        let text2 = "가입하기"
        
        let font1 = UIFont.systemFont(ofSize: 13)
        let font2 = UIFont.boldSystemFont(ofSize: 13)

        let color1 = UIColor.darkGray
        let color2 = UIColor.facebookColor
        
        let attributes = generateButtonAttribute(
            self.registarButton,
            texts: text1, text2,
            fonts: font1,font2,
            colros: color1,color2 )
    
        self.registarButton.setAttributedTitle(attributes, for: .normal)
        
    }
}
