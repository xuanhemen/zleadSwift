//
//  SpecialCollectionView.swift
//  SwiftDemo
//
//  Created by 董建伟 on 2019/5/6.
//  Copyright © 2019 Beijing tai chi HuaQing information systems co., LTD. All rights reserved.
//

import UIKit

class SpecialCollectionView: UICollectionView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    convenience init(frame: CGRect, viewModel: SpecialViewModel) {
        let layout = UICollectionViewFlowLayout.init()
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 1
        self.init(frame: frame, collectionViewLayout: layout)
        self.configDelegate(viewModel: viewModel)
        self.initView()
        
    }
    func configDelegate(viewModel: SpecialViewModel) {
        self.delegate = viewModel
        self.dataSource = viewModel
        self.prefetchDataSource = viewModel
        _ = viewModel.observable?.subscribe({ (event) in
           self.reloadData()
        })
    }
    func initView() {
        self.backgroundColor = .clear
        self.contentInset = UIEdgeInsets.init(top: 135, left: 0, bottom: 0, right: 0)
        self.register(SpecialCollectionViewCell.self, forCellWithReuseIdentifier: "special")
    }
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
