//
//  MyPageVC.swift
//  DLIFE
//
//  Created by changgyo seo on 2022/01/05.
//

import UIKit
import SnapKit

class MyPageVC: UIViewController {
    
    let mypageCollectionView: UICollectionView = {
        let fl = UICollectionViewFlowLayout()
        fl.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: fl)
        cv.backgroundColor = .clear
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .mainblue
        navigationDisplaySetting()
        collectionViewSetting()
    }
    
    func collectionViewSetting(){
        view.addSubview(mypageCollectionView)
        mypageCollectionView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        mypageCollectionView.register(MyPageInfoCollectionViewCell.self, forCellWithReuseIdentifier: "MyPageInfoCollectionViewCell")
        mypageCollectionView.register(MyReviewRecently5CollectionViewCell.self, forCellWithReuseIdentifier: "MyReviewRecently5CollectionViewCell")
        mypageCollectionView.delegate = self
        mypageCollectionView.dataSource = self
    }
    
    func navigationDisplaySetting(){
        let logoImg = MockUpView(frame: .zero, name: "logoImg", ifBtn: nil)
        let logoItem = UIBarButtonItem(customView: logoImg)
        let currWidth = logoItem.customView?.widthAnchor.constraint(equalToConstant: 200)
        currWidth?.isActive = true
        let currHeight = logoItem.customView?.heightAnchor.constraint(equalToConstant: 44)
        currHeight?.isActive = true
        self.navigationItem.leftBarButtonItem = logoItem
    }
    
}

extension MyPageVC: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            guard let cell = mypageCollectionView.dequeueReusableCell(withReuseIdentifier: "MyPageInfoCollectionViewCell", for: indexPath) as? MyPageInfoCollectionViewCell else { return MyPageInfoCollectionViewCell() }
            cell.settingChangeBtn.delegate = self
            cell.questionBtn.delegate = self
            cell.profileImg.delegate = self
            return cell
        } else {
            guard let cell = mypageCollectionView.dequeueReusableCell(withReuseIdentifier: "MyReviewRecently5CollectionViewCell", for: indexPath) as? MyReviewRecently5CollectionViewCell else { return MyReviewRecently5CollectionViewCell() }
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: view.bounds.width - 20, height: 550)
        } else {
            return CGSize(width: view.bounds.width - 20, height: 400)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    
    
}
