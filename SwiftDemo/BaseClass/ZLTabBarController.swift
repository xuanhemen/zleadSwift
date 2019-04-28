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
        firstPageVC.tabBarItem.title = "首页"
        let personCenterVC = ZLPersonalCenterVC()
        personCenterVC.tabBarItem.title = "个人中心"
        self.addChild(firstPageVC)
        self.addChild(personCenterVC)
        // Do any additional setup after loading the view.
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
