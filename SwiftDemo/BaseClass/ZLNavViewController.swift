//
//  ZLNavViewController.swift
//  SwiftDemo
//
//  Created by 董建伟 on 2019/5/10.
//  Copyright © 2019 Beijing tai chi HuaQing information systems co., LTD. All rights reserved.
//

import UIKit

class ZLNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.tintColor = .white
        self.navigationBar.barTintColor = kNavColor
        self.navigationBar.isTranslucent = false
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white,NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)]
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
