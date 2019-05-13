//
//  ZLSetViewController.swift
//  SwiftDemo
//
//  Created by 董建伟 on 2019/5/8.
//  Copyright © 2019 Beijing tai chi HuaQing information systems co., LTD. All rights reserved.
//

import UIKit

class ZLSetViewController: ZLBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        yellowView.frame = CGRect.init(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight-34)
        self.view.addSubview(yellowView)
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
