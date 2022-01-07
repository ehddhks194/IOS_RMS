//
//  MypageQuestionAnswerCollectionViewCell.swift
//  DLIFE
//
//  Created by changgyo seo on 2022/01/06.
//

import UIKit
import SnapKit

class MypageQuestionCollectionViewCell: UICollectionViewCell {
    
    
    var answerType = 0
    let gibone = UIViewController()
    let backBtn = MockUpView(frame: .zero, name: "backBtn", ifBackBtn: true)
    let adminImg = MockUpView(frame: .zero, name: "adminImg")
    let adminLabel = MockUpView(frame: .zero, name: "adminLabel")
    let messageView = MockUpView(frame: .zero, name: "")
    let messageTitle = MockUpView(frame: .zero, name: "messageTitle")
    var buttons = [MockUpView]()
    let messageGuidance = MockUpView(frame: .zero, name: "messageGuidance")
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        displaySetting()
    }
    
    private func displaySetting(){
        for idx in 0...6 {
            buttons.append(MockUpView(frame: .zero, name: "button"+"\(idx)"))
        }
        self.addSubview(adminImg)
        adminImg.snp.makeConstraints{
            $0.top.leading.equalToSuperview().inset(15)
            $0.width.height.equalTo(60)
        }
        self.addSubview(adminLabel)
        adminLabel.snp.makeConstraints{
            $0.top.equalTo(adminImg)
            $0.leading.equalTo(adminImg.snp.trailing).offset(8)
            $0.width.equalTo(60)
            $0.height.equalTo(20)
        }
        self.addSubview(messageView)
        messageView.snp.makeConstraints{
            $0.top.equalTo(adminLabel.snp.bottom).offset(8)
            $0.leading.equalTo(adminImg.snp.trailing).offset(8)
            $0.height.equalTo(380)
            $0.width.equalTo(220)
            
        }
        
        messageView.addSubview(messageTitle)
        messageTitle.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().inset(15)
            $0.width.equalTo(180)
            $0.height.equalTo(30)
        }
        buttons.forEach{
            messageView.addSubview($0)
        }
        buttons[0].snp.makeConstraints{
            $0.top.equalTo(messageTitle.snp.bottom).offset(15)
            $0.centerX.equalToSuperview().offset(-47.5)
            $0.width.equalTo(85)
            $0.height.equalTo(60)
        }
        buttons[1].snp.makeConstraints{
            $0.top.equalTo(messageTitle.snp.bottom).offset(15)
            $0.centerX.equalToSuperview().offset(47.5)
            $0.width.equalTo(85)
            $0.height.equalTo(60)
        }
        buttons[2].snp.makeConstraints{
            $0.top.equalTo(buttons[0].snp.bottom).offset(10)
            $0.centerX.equalToSuperview().offset(-47.5)
            $0.width.equalTo(85)
            $0.height.equalTo(60)
        }
        buttons[3].snp.makeConstraints{
            $0.top.equalTo(buttons[0].snp.bottom).offset(10)
            $0.centerX.equalToSuperview().offset(47.5)
            $0.width.equalTo(85)
            $0.height.equalTo(60)
        }
        buttons[4].snp.makeConstraints{
            $0.top.equalTo(buttons[3].snp.bottom).offset(10)
            $0.centerX.equalToSuperview().offset(-47.5)
            $0.width.equalTo(85)
            $0.height.equalTo(60)
        }
        buttons[5].snp.makeConstraints{
            $0.top.equalTo(buttons[3].snp.bottom).offset(10)
            $0.centerX.equalToSuperview().offset(47.5)
            $0.width.equalTo(85)
            $0.height.equalTo(60)
        }
        buttons[6].snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(buttons[5].snp.bottom).offset(10)
            $0.width.equalTo(180)
            $0.height.equalTo(60)
        }
        
        messageView.addSubview(messageGuidance)
        messageGuidance.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(buttons[6].snp.bottom).offset(15)
            $0.width.equalTo(180)
            $0.height.equalTo(20)
            
        }
        
        
        
    }
}

class MypageAnswerCollectionViewCell: UICollectionViewCell {
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    
}

