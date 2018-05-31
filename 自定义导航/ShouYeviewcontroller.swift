//
//  ShouYeviewcontroller.swift
//  demo3
//
//  Created by zaizai on 2018/5/31.
//  Copyright © 2018年 guest. All rights reserved.
//

import UIKit
class ShouYeviewcontroller : BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setView()
    }
    
     func setView(){
        self.title = "首页"
        let btn = UIButton.init(frame: CGRect.init(x: 100, y: 100, width: 50, height: 50 ))
        btn.backgroundColor = UIColor.yellow
        btn.addTarget(self, action: #selector(ShouYeviewcontroller.Shengji), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    @objc func Shengji(){
        let vc = oneViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
