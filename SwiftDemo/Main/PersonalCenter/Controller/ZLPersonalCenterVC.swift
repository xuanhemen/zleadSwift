//
//  ZLPersonalCenterVC.swift
//  SwiftDemo
//
//  Created by 董建伟 on 2019/4/28.
//  Copyright © 2019 Beijing tai chi HuaQing information systems co., LTD. All rights reserved.
//

import UIKit

class ZLPersonalCenterVC: ZLBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton.init(type: UIButton.ButtonType.custom)
        btn.setTitle("按钮", for: UIControl.State.normal)
        btn.backgroundColor = .black
        btn.frame = CGRect.init(x: 100, y: 100, width: 100, height: 100)
        btn.tag = 1
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(btnClick), for: UIControl.Event.touchUpInside)
        let observable = Observable<String>.create { (observer) -> Disposable in
            observer.onNext("msg")
             observer.onNext("m")
            observer.onCompleted()
            return Disposables.create()
        }
        _ = observable.subscribe { (event) in
           
            print( event.element ?? "")
        }
        let observab = Observable.of("A", "B", "C")
        
       _ = observab.subscribe { event in
        print(event.element ?? "")
        }
//        let observable = Observable<String>.create{observer in
//            //对订阅者发出了.next事件，且携带了一个数据"hangge.com"
//            observer.onNext("hangge.com")
//            //对订阅者发出了.completed事件
//            observer.onCompleted()
//            //因为一个订阅行为会有一个Disposable类型的返回值，所以在结尾一定要returen一个Disposable
//            return Disposables.create()
//        }
//
//        //订阅测试
//        observable.subscribe {
//            print($0)
//        }
        
           // .disposed(by: disposeBag)
        // Do any additional setup after loading the view.
    }
    @objc func btnClick(btn: UIButton)  {
        dLog(btn.tag)
        let vc = ZLSetViewController()
        self.present(vc, animated: true, completion: nil)
        
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
