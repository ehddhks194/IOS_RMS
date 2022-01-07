//
//  DlifeTabBarController.swift
//  DLIFE
//
//  Created by changgyo seo on 2022/01/05.
//

import UIKit
import SnapKit


class DlifeTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapBarSetting()
    }
    
    func tapBarSetting(){
        self.tabBar.backgroundColor = .white
        
        let myPageVC = UINavigationController(rootViewController: MyPageVC())
        let myPageTabBarItem = UITabBarItem(title: "My Page", image: nil, tag: 0)
        myPageVC.tabBarItem = myPageTabBarItem
        
        let searchVC = UIViewController()
        let searchTabBarItem = UITabBarItem(title: "Search", image: nil, tag: 0)
        searchVC.tabBarItem = searchTabBarItem
        
        let boardVC = UIViewController()
        let boardTabBarItem = UITabBarItem(title: "Board", image: nil, tag: 0)
        boardVC.tabBarItem = boardTabBarItem
        
        let staticsVC = UIViewController()
        let staticsTabBarItem = UITabBarItem(title: "Statics", image: nil, tag: 0)
        staticsVC.tabBarItem = staticsTabBarItem
        
        self.setViewControllers([myPageVC, searchVC, boardVC, staticsVC], animated: true)
        
    }
}
