//
//  BaseTabBarController.swift
//  demo3
//
//  Created by zaizai on 2018/5/31.
//  Copyright © 2018年 guest. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabbar = UITabBar.appearance()
        
        tabbar.tintColor = UIColor.red
        tabbar.barTintColor = UIColor.white
        /// 添加子控制器
        addChildViewControllers()
    }
    
    /// 设置控制器
    private func setChildController(controller: UIViewController, imageName: String) {
        controller.tabBarItem.image = UIImage(named: imageName + "_nor")
        controller.tabBarItem.selectedImage = UIImage(named: imageName + "_pre")
    }
    /// 添加子控制器
    private func addChildViewControllers() {
        setChildViewController(ShouYeviewcontroller(), title: "首页", imageName: "shouye")
        setChildViewController(FenLeiviewcontroller(), title: "分类", imageName: "fenlei")
        setChildViewController(WoDeviewcontroller(), title: "我的", imageName: "wode")
    }
    /// 初始化子控制器
    private func setChildViewController(_ childController: UIViewController, title: String, imageName: String) {
        // 设置 tabbar 文字和图片
        setChildController(controller: childController, imageName: imageName)
        childController.title = title
        // 添加导航控制器为 TabBarController 的子控制器
        addChildViewController(BaseNavigationController(rootViewController: childController))
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
}
