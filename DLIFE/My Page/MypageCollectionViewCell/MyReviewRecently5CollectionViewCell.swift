//
//  MyPageTableViewCell.swift
//  DLIFE
//
//  Created by changgyo seo on 2022/01/05.
//

import UIKit
import SnapKit

class MyReviewRecently5CollectionViewCell: UICollectionViewCell {
    
    let scoreLabel = MockUpView(frame: .zero, name: "scoreLabel")
    let showMyListBtn = MockUpView(frame: .zero, name: "showMyListBtn")
    let firstIdx = MockUpView(frame: .zero, name: "firstIdx")
    let secondIdx = MockUpView(frame: .zero, name: "secondIdx")
    let thirdIdx = MockUpView(frame: .zero, name: "thirdIdx")
    let fourthIdx = MockUpView(frame: .zero, name: "fourthIdx")
    let fifthIdx = MockUpView(frame: .zero, name: "fifthIdx")
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        displaySetting()
    }
    
    private func displaySetting(){
        self.backgroundColor = .green
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 3
        
        self.addSubview(scoreLabel)
        scoreLabel.snp.makeConstraints{
            $0.top.leading.equalToSuperview().inset(20)
            $0.width.equalTo(180)
            $0.height.equalTo(70)
        }
        
        self.addSubview(showMyListBtn)
        showMyListBtn.snp.makeConstraints{
            $0.bottom.equalTo(scoreLabel.snp.bottom)
            $0.trailing.equalToSuperview().inset(20)
            $0.width.equalTo(100)
            $0.height.equalTo(30)
        }
        
        self.addSubview(firstIdx)
        firstIdx.snp.makeConstraints{
            $0.top.equalTo(scoreLabel.snp.bottom).offset(40)
            $0.trailing.leading.equalToSuperview().inset(20)
            $0.height.equalTo(40)
        }
        self.addSubview(secondIdx)
        secondIdx.snp.makeConstraints{
            $0.top.equalTo(firstIdx.snp.bottom).offset(15)
            $0.trailing.leading.equalToSuperview().inset(20)
            $0.height.equalTo(40)
        }
        self.addSubview(thirdIdx)
        thirdIdx.snp.makeConstraints{
            $0.top.equalTo(secondIdx.snp.bottom).offset(15)
            $0.trailing.leading.equalToSuperview().inset(20)
            $0.height.equalTo(40)
        }
        self.addSubview(fourthIdx)
        fourthIdx.snp.makeConstraints{
            $0.top.equalTo(thirdIdx.snp.bottom).offset(15)
            $0.trailing.leading.equalToSuperview().inset(20)
            $0.height.equalTo(40)
        }
        self.addSubview(fifthIdx)
        fifthIdx.snp.makeConstraints{
            $0.top.equalTo(fourthIdx.snp.bottom).offset(15)
            $0.trailing.leading.equalToSuperview().inset(20)
            $0.height.equalTo(40)
        }
        
    }
}
