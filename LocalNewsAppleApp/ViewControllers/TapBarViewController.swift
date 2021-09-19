//
//  TapBarViewController.swift
//  LocalNewsAppleApp
//
//  Created by Dmitry Logachev on 14.09.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let appleNews = AppleNews.getNewsList()
        let swiftNews = SwiftNews.getNewsList()
        let appleTestNews = AppleNews.getNewsList()
        
        
        guard let appleNewsVC = viewControllers?[0] as? AppleNewsListViewController else { return }
        guard let swiftNewsVC = viewControllers?[1] as? SwiftNewsListViewController else { return }
        guard let appleTestNewsVC = viewControllers?[2] as? TestingTableViewController else { return }
        
        appleNewsVC.appleNews = appleNews
        swiftNewsVC.swiftNews = swiftNews
        
        appleTestNewsVC.appleTestNews = appleTestNews
        
    }
}
