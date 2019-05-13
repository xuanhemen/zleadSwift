//
//  SpecialCollectionViewCell.swift
//  SwiftDemo
//
//  Created by 董建伟 on 2019/5/6.
//  Copyright © 2019 Beijing tai chi HuaQing information systems co., LTD. All rights reserved.
//

import UIKit

class SpecialCollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    lazy var imgView: UIImageView = {
        let imgView = UIImageView()
        self.addSubview(imgView)
        imgView.snp.makeConstraints({ (make) in
            make.width.height.equalTo(40)
            make.centerX.equalTo(self)
            make.centerY.equalTo(self).offset(-13)
        })
        return imgView
    }()
    lazy var specialName: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = fontNarmal
        label.textAlignment = NSTextAlignment.center
        self.addSubview(label)
        label.snp.makeConstraints({ (make) in
            make.centerX.equalTo(imgView)
            make.top.equalTo(imgView.snp.bottom).offset(5)
            make.size.equalTo(CGSize.init(width: 80, height: 40))
        })
        return  label
    }()
    func initCell(viewModel: ItemViewModel) {
        imgView.image = viewModel.img
        specialName.text = viewModel.name
    }
    
}
