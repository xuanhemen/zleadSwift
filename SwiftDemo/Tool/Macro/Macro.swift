//
//  Macro.swift
//  SwiftDemo
//
//  Created by 董建伟 on 2019/4/28.
//  Copyright © 2019 Beijing tai chi HuaQing information systems co., LTD. All rights reserved.
//

import Foundation


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
/** 屏幕宽度 */
let kScreenWidth = UIScreen.main.bounds.size.width
/** 屏幕高度 */
let kScreenHeight = UIScreen.main.bounds.size.height
/** 是否是X */
let isX:Bool = UIScreen.main.bounds.size.width == 812 ? true:false
/** 导航高度 */
let kNavHeight = isX ? 88 : 64




