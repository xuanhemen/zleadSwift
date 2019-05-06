//
//  ZLConfig.swift
//  SwiftDemo
//
//  Created by 董建伟 on 2019/4/28.
//  Copyright © 2019 Beijing tai chi HuaQing information systems co., LTD. All rights reserved.
//

import UIKit

var ZL_BASE_URL_STRING: String = "" //服务器地址

class ZLConfig: NSObject {

    /** 选择初始化控制器 */
    static func chooseRootController() {
        let vc = ZLTabBarController()
        UIApplication.shared.keyWindow?.rootViewController = vc
    }
    /** 开发和生产环境的配置 */
    static func config() {
        let infoDic = Bundle.main.infoDictionary
        let isOnLine: Bool = infoDic?["EnvironmentOnLine"] as! Bool
        if isOnLine { //生产环境服务器地址
            dLog("生产环境\(isOnLine)")
            }else{ //开发环境服务器地址
            dLog("开发环境\(isOnLine)")
        }
    }
}
