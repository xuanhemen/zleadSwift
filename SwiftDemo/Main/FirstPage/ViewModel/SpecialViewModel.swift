//
//  SpecialViewModel.swift
//  SwiftDemo
//
//  Created by 董建伟 on 2019/5/5.
//  Copyright © 2019 Beijing tai chi HuaQing information systems co., LTD. All rights reserved.
//

import UIKit

class SpecialViewModel: ZLViewModel {

    var specialArr = [ItemViewModel]()  //数据源
    
    override init() {
        super.init()
        self.requestData()
        
    }
    /** 请求数据 */
    func requestData() {
        let params = ["districtId":"6B9E6B70C8784DB381AFAAD16EE82505"]
        NetManager.requestData(url: "http://fp.fjcz.gov.cn/yscms/app/getSPFInfo.do", method: .post, parameters: params, success: { (result) in
            if let jsonObjc = JSON(result).dictionary,let array = jsonObjc["SPFList"]?.arrayObject{
                let modelArr = [SpecialModel].deserialize(from: array)
                modelArr?.forEach({ (specialModel) in
                    let model = ItemViewModel()
                    model.name = specialModel?.JCNAME ?? ""
                    model.id  = specialModel?.SPFID ?? ""
                    self.specialArr.append(model)
                })
            }
            
        }) { (errorResult) in
            
        }
    }
}
