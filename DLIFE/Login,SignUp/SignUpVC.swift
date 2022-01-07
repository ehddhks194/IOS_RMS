//
//  SignUpVC.swift
//  DLIFE
//
//  Created by changgyo seo on 2022/01/05.
//

import UIKit
import SnapKit

class SignUpVC: UIViewController {
    
    let logoImg = MockUpView(frame: .zero, name: "logoImg")
    let backBtn = MockUpView(frame: .zero, name: "backBtn",ifBackBtn: true)
    let divider = MockUpView(frame: .zero, name: "divider")
    let idTextField = MockUpView(frame: .zero, name: "idTextField")
    let passwordTextField = MockUpView(frame: .zero, name: "passwordTextField")
    let passwordRetryTextField = MockUpView(frame: .zero, name: "passwordRetryTextField")
    let nickNameTextField = MockUpView(frame: .zero, name: "nickNameTextField")
    let phoneNumberTextField = MockUpView(frame: .zero, name: "phoneNumberTextField")
    let genderSwitch = MockUpView(frame: .zero, name: "genderSwitch")
    let nextBtn = MockUpView(frame: .zero, name: "nextBtn", ifBtn: SignUpCarNumberVC())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .mainblue
        self.navigationController?.isNavigationBarHidden = true
        displaySetting()
    }
    
    func displaySetting(){
        view.addSubview(logoImg)
        logoImg.snp.makeConstraints{
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.equalToSuperview().inset(14)
            $0.width.equalTo(201)
            $0.height.equalTo(59)
        }
        
        view.addSubview(backBtn)
        backBtn.delegate = self
        backBtn.snp.makeConstraints{
            $0.centerY.equalTo(logoImg)
            $0.trailing.equalToSuperview().inset(14)
            $0.width.equalTo(70)
            $0.height.equalTo(30)
        }
        
        view.addSubview(divider)
        divider.snp.makeConstraints{
            $0.top.equalTo(logoImg.snp.bottom).offset(40)
            $0.leading.trailing.equalTo(0)
            $0.height.equalTo(50)
        }
        
        view.addSubview(idTextField)
        idTextField.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(divider.snp.bottom).offset(50)
            $0.width.equalTo(252)
            $0.height.equalTo(50)
            
        }
        view.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(idTextField.snp.bottom).offset(25)
            $0.width.equalTo(252)
            $0.height.equalTo(50)
            
        }
        view.addSubview(passwordRetryTextField)
        passwordRetryTextField.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(passwordTextField.snp.bottom).offset(25)
            $0.width.equalTo(252)
            $0.height.equalTo(50)
            
        }
        view.addSubview(nickNameTextField)
        nickNameTextField.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(passwordRetryTextField.snp.bottom).offset(25)
            $0.width.equalTo(252)
            $0.height.equalTo(50)
            
        }
        view.addSubview(phoneNumberTextField)
        phoneNumberTextField.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(nickNameTextField.snp.bottom).offset(25)
            $0.width.equalTo(252)
            $0.height.equalTo(50)
            
        }
        view.addSubview(genderSwitch)
        genderSwitch.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(phoneNumberTextField.snp.bottom).offset(25)
            $0.width.equalTo(252)
            $0.height.equalTo(50)
            
        }
        
        view.addSubview(nextBtn)
        nextBtn.delegate = self
        nextBtn.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().inset(55)
            $0.width.equalTo(252)
            $0.height.equalTo(50)
        }
        
        
        
        
        
    }
}
