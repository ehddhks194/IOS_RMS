//
//  MyaPageQuestionVC.swift
//  DLIFE
//
//  Created by changgyo seo on 2022/01/06.
//

import UIKit
import SnapKit

class MyPageQuestionVC: UIViewController {
    
    var answerMessage = 1
    var questionMessage = 0
    let MyPageMessageCollectionView: UICollectionView = {
        let fl = UICollectionViewFlowLayout()
        fl.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: fl)
        cv.backgroundColor = .mainblue
        return cv
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .mainblue
        navigationSetting()
        collectionViewSetting()
    }
    
    private func navigationSetting(){
        self.title = "문의하기"
    }
    
    private func collectionViewSetting(){
        answerMessage = 3
        questionMessage = 3
        view.addSubview(MyPageMessageCollectionView)
        MyPageMessageCollectionView.snp.makeConstraints{
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.trailing.bottom.equalToSuperview()
        }
        MyPageMessageCollectionView.register(MypageQuestionCollectionViewCell.self, forCellWithReuseIdentifier: "MypageQuestionCollectionViewCell")
        MyPageMessageCollectionView.register(MypageAnswerCollectionViewCell.self, forCellWithReuseIdentifier: "MypageAnswerCollectionViewCell")

        MyPageMessageCollectionView.delegate = self
        MyPageMessageCollectionView.dataSource = self
    }
    
    
}

extension MyPageQuestionVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        if section == 0 {
            return self.answerMessage
        } else {
            return self.questionMessage
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            guard let cell = MyPageMessageCollectionView.dequeueReusableCell(withReuseIdentifier: "MypageQuestionCollectionViewCell", for: indexPath) as? MypageQuestionCollectionViewCell else {return MypageQuestionCollectionViewCell()}
            cell.backgroundColor = .blue
            return cell
        } else {
            guard let cell = MyPageMessageCollectionView.dequeueReusableCell(withReuseIdentifier: "MypageAnswerCollectionViewCell", for: indexPath) as? MypageAnswerCollectionViewCell else {return MypageAnswerCollectionViewCell()}
            cell.backgroundColor = .white
            return cell
        }
    }
       
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: view.bounds.width, height: 300)
        } else {
            return CGSize(width: view.bounds.width, height: 200)
        }
    }
}
