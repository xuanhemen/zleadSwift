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
        
        self.view.addSubview(self.imgView)
        self.view.addSubview(self.collectionView)
       
    }
    lazy var viewModel: SpecialViewModel = {
        let viewModel = SpecialViewModel.init()
        return viewModel
    }()
    lazy var collectionView: SpecialCollectionView = {
        let mainView = SpecialCollectionView.init(frame: self.view.frame, viewModel: self.viewModel)
        return mainView
    }()
    lazy var imgView: TopImgView = {
        let imgView = TopImgView.init(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: 135), viewModel: self.viewModel)
        return imgView
    }()
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
