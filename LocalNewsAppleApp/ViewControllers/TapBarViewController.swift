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
        guard let appleNewsVC = viewControllers?.first as? AppleNewsListViewController else { return }
        guard let swiftNewsVC = viewControllers?.last as? SwiftNewsListViewController else { return }
        
        appleNewsVC.appleNews = appleNews
        swiftNewsVC.swiftNews = swiftNews
        
    }
}
