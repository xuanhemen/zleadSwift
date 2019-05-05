//
//  NetManager.swift
//  SwiftDemo
//
//  Created by 董建伟 on 2019/4/28.
//  Copyright © 2019 Beijing tai chi HuaQing information systems co., LTD. All rights reserved.
//

import UIKit
import Alamofire

class NetManager: NSObject {


    typealias Success = (_ response:Dictionary<String,Any>) -> Void //成功回调
    typealias Failure = (_ failMag:Dictionary<String,Any>) -> Void //失败回调（不是网络请求失败的回调）
    
    /// 网络请求
    ///
    /// - Parameters:
    ///   - withUrl: 请求地址
    ///   - method: 请求方式
    ///   - parameters: 请求参数
    ///   - success: 成功回调
    ///   - fail: 失败回调
    static func requestData(url: String,
                            method: HTTPMethod,
                            parameters: [String:String],
                            success:@escaping Success,
                            fail:@escaping Failure){
        Alamofire.request(url, method: method, parameters: parameters, encoding: URLEncoding.default).responseJSON { (response) in
            response.result.ifSuccess {
                let dic = response.result.value as! Dictionary<String, Any>
                success(dic)
                
            }
            response.result.ifFailure {
                print("请求失败")
            }
            
            
        }
    }
}
