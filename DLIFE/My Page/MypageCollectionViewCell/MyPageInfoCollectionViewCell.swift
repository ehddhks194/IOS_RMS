//
//  MyPageTableViewCell.swift
//  DLIFE
//
//  Created by changgyo seo on 2022/01/05.
//

import UIKit
import SnapKit

class MyPageInfoCollectionViewCell: UICollectionViewCell {
    
    let profileImg = MockUpView(frame: .zero, name: "profileImg",ifBackBtn: true)
    let carNumverLabel = MockUpView(frame: .zero, name: "carNumverLabel")
    let nickNameLabel = MockUpView(frame: .zero, name: "nickNameLabel")
    let addressLabel = MockUpView(frame: .zero, name: "adressLabel")
    let carTypeLabel = MockUpView(frame: .zero, name: "carTypeLabel")
    let carAgeLabel = MockUpView(frame: .zero, name: "carAgeLabel")
    let questionBtn = MockUpView(frame: .zero, name: "questionBtn", ifBtn: MyPageQuestionVC())
    let settingChangeBtn = MockUpView(frame: .zero, name: "settingChangeBtn", ifBtn: MyPageSettingDetailVC())
    

    override func layoutSubviews() {
        super.layoutSubviews()
        displaySetting()
    }
    
    private func displaySetting(){
        self.backgroundColor = .green
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 3
        
        
        self.addSubview(profileImg)
        profileImg.snp.makeConstraints{
            $0.leading.top.equalToSuperview().inset(10)
            $0.width.height.equalTo(160)
        }
        
        self.addSubview(carNumverLabel)
        carNumverLabel.snp.makeConstraints{
            $0.trailing.top.equalToSuperview().inset(20)
            $0.width.equalTo(160)
            $0.height.equalTo(50)
        }
        
        self.addSubview(nickNameLabel)
        nickNameLabel.snp.makeConstraints{
            $0.centerX.equalTo(carNumverLabel.snp.centerX)
            $0.top.equalTo(carNumverLabel.snp.bottom).offset(35)
            $0.width.equalTo(130)
            $0.height.equalTo(40)
        }
        
        self.addSubview(addressLabel)
        addressLabel.snp.makeConstraints{
            $0.top.equalTo(profileImg.snp.bottom).offset(30)
            $0.leading.trailing.equalToSuperview().inset(30)
            $0.height.equalTo(40)
        }
        
        self.addSubview(carTypeLabel)
        carTypeLabel.snp.makeConstraints{
            $0.top.equalTo(addressLabel.snp.bottom).offset(20)
            $0.leading.trailing.equalToSuperview().inset(30)
            $0.height.equalTo(40)
        }
        
        self.addSubview(carAgeLabel)
        carAgeLabel.snp.makeConstraints{
            $0.top.equalTo(carTypeLabel.snp.bottom).offset(20)
            $0.leading.trailing.equalToSuperview().inset(30)
            $0.height.equalTo(40)
        }
        
        self.addSubview(settingChangeBtn)
        settingChangeBtn.snp.makeConstraints{
            $0.bottom.equalToSuperview().inset(20)
            $0.leading.trailing.equalToSuperview().inset(30)
            $0.height.equalTo(40)
        }
        
        self.addSubview(questionBtn)
        questionBtn.snp.makeConstraints{
            $0.bottom.equalTo(settingChangeBtn.snp.top).offset(-10)
            $0.leading.trailing.equalToSuperview().inset(30)
            $0.height.equalTo(40)
        }
    }
}
