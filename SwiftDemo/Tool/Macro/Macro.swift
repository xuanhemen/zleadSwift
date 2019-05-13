//
//  Macro.swift
//  SwiftDemo
//
//  Created by 董建伟 on 2019/4/28.
//  Copyright © 2019 Beijing tai chi HuaQing information systems co., LTD. All rights reserved.
//

import Foundation
import SnapKit
@_exported import RxSwift
import RxCocoa
//MARK: - 全局方法
/** debug下打印 */
func dLog<N>(_ message: N, fileName: String = #file, methodName: String = #function, lineNumber: Int = #line){
        #if DEBUG
        let fName = ((fileName as NSString).pathComponents.last!)
        print("-------------------------------------------------\n位置：\(fName as NSString)\n方法：\(methodName)\n行号：\(lineNumber)\n信息：\(message)\n-------------------------------------------------");
        #endif
}
/** rgb颜色 */
func color(r: CGFloat,g: CGFloat,b: CGFloat,a: CGFloat) ->UIColor {
    return UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}
/** 图片 */
func img(_ name: String) -> UIImage {
    if name.isEmpty {
        dLog("图片为空")
        return UIImage(named: "")!
    }
    return UIImage.init(named: name)!
}
/** HUD */
func showHUD(_ msg: String) {
    SVProgressHUD.show(withStatus: msg)
}
/** 撤销HUD */
func dismissHUD() {
    SVProgressHUD.dismiss()
}
//MARK: - 全局常量
/** 适配 */
let s = UIScreen.main.bounds.size.width/375.0
/** 正常字体大小 */
let fontNarmal = UIFont.systemFont(ofSize: 16*s)
/** 屏幕宽度 */
let kScreenWidth = UIScreen.main.bounds.size.width
/** 屏幕高度 */
let kScreenHeight = UIScreen.main.bounds.size.height
/** 是否是X */
let isX:Bool = UIScreen.main.bounds.size.height >= 812 ? true:false
/** 导航高度 */
let kNavHeight = isX ? 88 : 64
/** 状态栏高度 */
let kStatusBarHeight = UIApplication.shared.statusBarFrame.size.height
/*导航栏颜色*/
let kNavColor = color(r: 208, g: 70, b: 85, a: 1)






