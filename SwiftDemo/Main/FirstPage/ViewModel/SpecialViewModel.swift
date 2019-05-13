//
//  SpecialViewModel.swift
//  SwiftDemo
//
//  Created by 董建伟 on 2019/5/5.
//  Copyright © 2019 Beijing tai chi HuaQing information systems co., LTD. All rights reserved.
//

import UIKit
@_exported import RxSwift
class SpecialViewModel: ZLViewModel,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDataSourcePrefetching {

    var specialArr = [ItemViewModel]()  //数据源
    var observable: Observable<String>?
    override init() {
        super.init()
        self.requestData()
        
    }
    /** 请求数据 */
    func requestData() {
         showHUD("正在加载")
         observable = Observable<String>.create { (observer) -> Disposable in
           
        let params = ["districtId":"6B9E6B70C8784DB381AFAAD16EE82505"]
        NetManager.requestData(url: "http://fp.fjcz.gov.cn/yscms/app/getSPFInfo.do", method: .post, parameters: params, success: { (result) in
            if let jsonObjc = JSON(result).dictionary,let dic = jsonObjc["result"]?.dictionary,let array = dic["SPFList"]?.arrayObject{
                let modelArr = [SpecialModel].deserialize(from: array)
                dLog("数组\(String(describing: modelArr?.count))")
                modelArr?.forEach({ (specialModel) in
                    let model = ItemViewModel()
                    model.name = specialModel?.JCNAME ?? ""
                    model.id  = specialModel?.SPFID ?? ""
                    self.specialArr.append(model)
                })
            }
            
            dismissHUD()
            observer.onNext("fresh")
            
        }) { (errorResult) in
            
        }
            return Disposables.create()
        }
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.specialArr.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (kScreenWidth-3)/4, height: 100)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "special", for: indexPath) as! SpecialCollectionViewCell
        let viewModel = specialArr[indexPath.row]
        cell.initCell(viewModel: viewModel)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, prefetchItemsAt indexPaths: [IndexPath]) {
        
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let distance = scrollView.contentOffset.y
        
        
    }
}
