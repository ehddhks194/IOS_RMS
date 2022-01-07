//
//  ViewController.swift
//  DLIFE
//
//  Created by changgyo seo on 2022/01/03.
//

import UIKit
import SnapKit
import SwiftUI

class LoginVC: UIViewController {
    
    var logoImg = MockUpView(frame: .zero, name: "logoImg")
    var idTextField = MockUpView(frame: .zero, name: "idTextField")
    var passwordTextField = MockUpView(frame: .zero, name: "passwordTextField")
    var kakaoBtn = MockUpView(frame: .zero, name: "kakaoBtn")
    var facebookBtn = MockUpView(frame: .zero, name: "facebookBtn")
    var googleBtn = MockUpView(frame: .zero, name: "googleBtn")
    var loginBtn = MockUpView(frame: .zero, name: "loginBtn", ifBtn: UINavigationController(rootViewController: MyPageVC()))
    var temp: Int?
    var signinBtn = MockUpView(frame: .zero, name: "signinBtn", ifBtn: SignUpVC())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .mainblue
        self.navigationController?.isNavigationBarHidden = true
        displaySetting()
        
    }
    //레이아웃 구성
    private func displaySetting(){
        view.addSubview(logoImg)
        logoImg.snp.makeConstraints{
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(40)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(200)
            $0.width.equalTo(200)
        }
        
        view.addSubview(idTextField)
        idTextField.snp.makeConstraints{
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(325)
            $0.leading.equalToSuperview().inset(40)
            $0.trailing.equalToSuperview().inset(40)
            $0.height.equalTo(45)
        }
        view.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(40)
            $0.trailing.equalToSuperview().inset(40)
            $0.top.equalTo(idTextField).offset(60)
            $0.height.equalTo(45)
        }
        view.addSubview(facebookBtn)
        facebookBtn.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(passwordTextField).offset(60)
            $0.height.equalTo(60)
            $0.width.equalTo(60)
        }
    
        view.addSubview(kakaoBtn)
        kakaoBtn.snp.makeConstraints{
            $0.trailing.equalTo(facebookBtn.snp.leading).offset(-40)
            $0.top.equalTo(passwordTextField).offset(60)
            $0.height.equalTo(60)
            $0.width.equalTo(60)
        }
        view.addSubview(googleBtn)
        googleBtn.snp.makeConstraints{
            $0.leading.equalTo(facebookBtn.snp.trailing).offset(40)
            $0.top.equalTo(passwordTextField).offset(60)
            $0.height.equalTo(60)
            $0.width.equalTo(60)
        }
        view.addSubview(signinBtn)
        signinBtn.delegate = self
        signinBtn.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(40)
            $0.trailing.equalToSuperview().inset(40)
            $0.bottom.equalTo(view.snp_bottomMargin).offset(-30)
            $0.height.equalTo(60)
        }
        view.addSubview(loginBtn)
        loginBtn.delegate = self
        loginBtn.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(40)
            $0.trailing.equalToSuperview().inset(40)
            $0.height.equalTo(60)
            $0.bottom.equalTo(signinBtn.snp_bottomMargin).offset(-70)
        }
    }
}

