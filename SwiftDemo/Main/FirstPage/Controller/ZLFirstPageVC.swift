//
//  ZLFirstPageVC.swift
//  SwiftDemo
//
//  Created by 董建伟 on 2019/4/28.
//  Copyright © 2019 Beijing tai chi HuaQing information systems co., LTD. All rights reserved.
//

import UIKit


class ZLFirstPageVC: ZLBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        
        let params = ["districtId":"6B9E6B70C8784DB381AFAAD16EE82505"]
        NetManager.requestData(url: "http://fp.fjcz.gov.cn/yscms/app/getSPFInfo.do", method: .post, parameters: params, success: { (result) in
        
        }) { (errorResult) in
            
        }
        
        
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
