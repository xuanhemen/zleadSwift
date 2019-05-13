//
//  ZLTabBarController.swift
//  SwiftDemo
//
//  Created by 董建伟 on 2019/4/28.
//  Copyright © 2019 Beijing tai chi HuaQing information systems co., LTD. All rights reserved.
//

import UIKit

class ZLTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let firstPageVC = ZLFirstPageVC()
        self.initNavController(vc: firstPageVC, title: "首页", image: UIImage.init(named: "首页")!, selecImg: UIImage.init(named: "tabbar_icon_home_active")!)
        
        let personCenterVC = ZLPersonalCenterVC()
        self.initNavController(vc: personCenterVC, title: "个人中心", image: UIImage.init(named: "我的")!, selecImg: UIImage.init(named: "tabbar_icon_my_active")!)
       
        self.tabBar.tintColor = kNavColor
        self.tabBar.barTintColor = .white
        // Do any additional setup after loading the view.
    }
    func initNavController(vc: UIViewController,title: String,image: UIImage,selecImg: UIImage) {
        let nvc = ZLNavViewController.init(rootViewController: vc)
        vc.navigationItem.title = title
        nvc.tabBarItem.title = title
        nvc.tabBarItem.image = image
        nvc.tabBarItem.selectedImage = selecImg
        self.addChild(nvc)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
