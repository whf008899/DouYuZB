//
//  MainViewController.swift
//  DouYu
//
//  Created by whf on 17/3/4.
//  Copyright © 2017年 Felix. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 添加子控制器
        addChildVC(name: "Home")
        addChildVC(name: "Live")
        addChildVC(name: "Follow")
        addChildVC(name: "Mine")
        addChildVC(name: "Other")
    }
    /**
     设置tabbar子控制器
     */
    private func addChildVC(name : String) {
        // 获取storyboard对应的初始化控制器
        let childVC = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController()!
        self.addChildViewController(childVC)
    }
}
