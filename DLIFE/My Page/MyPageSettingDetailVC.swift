//
//  MyPageSettingDetailVC.swift
//  DLIFE
//
//  Created by changgyo seo on 2022/01/06.
//

import UIKit
import SnapKit

class MyPageSettingDetailVC: UIViewController{
    
    let backBtn = MockUpView(frame: .zero, name: "backBtn",ifBackBtn: true)
    let profileImg = MockUpView(frame: .zero, name: "profileImg")
    let cameraBtn = MockUpView(frame: .zero, name: "cameraBtn")
    let nickNameLabel = MockUpView(frame: .zero, name: "nickNameLabel")
    let carNumberTextField = MockUpView(frame: .zero, name: "carNumberTextField")
    let idTextField = MockUpView(frame: .zero, name: "idTextField")
    let passwordTextField = MockUpView(frame: .zero, name: "passwordTextField")
    let nicknameTextField = MockUpView(frame: .zero, name: "nicknameTextField")
    let phoneNumberTextField = MockUpView(frame: .zero, name: "phoneNumberTextField")
    let completeBtn = MockUpView(frame: .zero, name: "completeBtn", ifBackBtn: true)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .mainblue
        displaySetting()
    }
    
    private func displaySetting(){
        
        view.addSubview(backBtn)
        backBtn.delegate = self
        backBtn.snp.makeConstraints{
            $0.top.leading.equalTo(view.safeAreaLayoutGuide).inset(15)
            $0.width.equalTo(70)
            $0.height.equalTo(30)
        }
        
        view.addSubview(profileImg)
        profileImg.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().inset(180)
            $0.width.equalTo(130)
            $0.height.equalTo(130)
        }
        
        view.addSubview(cameraBtn)
        cameraBtn.snp.makeConstraints{
            $0.bottom.equalTo(profileImg.snp.bottom)
            $0.centerX.equalToSuperview()
            $0.width.height.equalTo(50)
        }
        
        view.addSubview(nickNameLabel)
        nickNameLabel.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(profileImg.snp.bottom).offset(20)
            $0.width.equalTo(200)
            $0.height.equalTo(30)
        }
        view.addSubview(carNumberTextField)
        carNumberTextField.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(nickNameLabel.snp.bottom).offset(10)
            $0.width.equalTo(200)
            $0.height.equalTo(60)
        }
        
        view.addSubview(idTextField)
        idTextField.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(carNumberTextField.snp.bottom).offset(40)
            $0.width.equalToSuperview().inset(40)
            $0.height.equalTo(30)
        }
        view.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(idTextField.snp.bottom).offset(25)
            $0.width.equalToSuperview().inset(40)
            $0.height.equalTo(30)
        }
        view.addSubview(nicknameTextField)
        nicknameTextField.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(passwordTextField.snp.bottom).offset(25)
            $0.width.equalToSuperview().inset(40)
            $0.height.equalTo(30)
        }
        view.addSubview(phoneNumberTextField)
        phoneNumberTextField.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(nicknameTextField.snp.bottom).offset(25)
            $0.width.equalToSuperview().inset(40)
            $0.height.equalTo(30)
        }
        view.addSubview(completeBtn)
        completeBtn.delegate = self
        completeBtn.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(phoneNumberTextField.snp.bottom).offset(45)
            $0.width.equalToSuperview().inset(40)
            $0.height.equalTo(50)
        }
        
        
    }
    
}
