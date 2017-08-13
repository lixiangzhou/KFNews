//
//  KFTabBarController.swift
//  KFNews
//
//  Created by lixiangzhou on 2017/8/13.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

class KFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBar.appearance().tintColor = UIColor(stringHexValue: "c1101c")
        
        addChilds()
    }
    
    func addChilds() {
        addController(KFHomeController(), title: "首页", image: "tab-bar-home-unselected~iphone", selectedImage: "tab-bar-home-selected~iphone")
        addController(KFVideoController(), title: "视频", image: "tab-bar-TV-unselected~iphone", selectedImage: "tab-bar-TV-selected~iphone")
        addController(KFVRController(), title: "VR", image: "tab-bar-VR-unselected~iphone", selectedImage: "tab-bar-VR-selected~iphone")
        addController(KFMineController(), title: "我的", image: "tab-bar-profile-unselected~iphone", selectedImage: "tab-bar-profile-selected~iphone")
    }

    func addController(_ controller: KFViewController, title: String?, image: String, selectedImage: String) {
        controller.title = title
        controller.tabBarItem.image = UIImage(named: image)?.withRenderingMode(.alwaysOriginal)
        controller.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        let nav = KFNavigationController(rootViewController: controller)
        addChildViewController(nav)
    }
}
