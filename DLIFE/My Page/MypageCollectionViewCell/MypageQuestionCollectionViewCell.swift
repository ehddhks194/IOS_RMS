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
    let messageView = MockUpView(frame: .zero, name: "messageView")
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
            $0.width.height.equalTo(40)
        }
        
        
        
    }
}

class MypageAnswerCollectionViewCell: UICollectionViewCell {
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    
}

