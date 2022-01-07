//
//  SignUpCarNumberVC.swift
//  DLIFE
//
//  Created by changgyo seo on 2022/01/05.
//

import UIKit
import SnapKit

class SignUpCarNumberVC: UIViewController {
    
    let logoImg = MockUpView(frame: .zero, name: "logoImg")
    let backBtn = MockUpView(frame: .zero, name: "backBtn", ifBackBtn: true)
    let divider = MockUpView(frame: .zero, name: "divider")
    let carNumberTextField = MockUpView(frame: .zero, name: "carNumberTextField")
    let signUpCompleteBtn = MockUpView(frame: .zero, name: "signUpCompleteBtn")
    
    
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
        
        view.addSubview(carNumberTextField)
        carNumberTextField.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(divider.snp.bottom).offset(50)
            $0.width.equalTo(300)
            $0.height.equalTo(90)
        }
        
        view.addSubview(signUpCompleteBtn)
        signUpCompleteBtn.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().inset(55)
            $0.width.equalTo(252)
            $0.height.equalTo(50)
        }
    }
    
}
