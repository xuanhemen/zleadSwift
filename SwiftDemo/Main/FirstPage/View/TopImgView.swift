//
//  TopImgView.swift
//  SwiftDemo
//
//  Created by 董建伟 on 2019/5/13.
//  Copyright © 2019 Beijing tai chi HuaQing information systems co., LTD. All rights reserved.
//

import UIKit

class TopImgView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.image = img("banner")
    }
    convenience init(frame: CGRect,viewModel: SpecialViewModel) {
        self.init(frame: frame)
        self.responseEvent(viewModel: viewModel)
       
    }
    func responseEvent(viewModel: SpecialViewModel) {
        _ = viewModel.distanceSubject.asObservable().subscribe(onNext: { (imgFrame) in
            self.frame = imgFrame
        }, onError: { (error) in
            
        }, onCompleted: {
            
        }) {
            
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
