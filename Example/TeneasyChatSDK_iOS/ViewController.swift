//
//  ViewController.swift
//  TeneasyChatSDK_iOS
//
//  Created by 7938813 on 01/19/2023.
//  Copyright (c) 2023 7938813. All rights reserved.
//

import UIKit
import TeneasyChatSDK_iOS


class ViewController: UIViewController {
    let lib = libTest()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lib.callWebsocket()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        lib.toastHello(vc: self)
    
        let btSend = UIButton()
        self.view.addSubview(btSend)
        btSend.addTarget(self, action:#selector(btSendAction), for:.touchUpInside)
    }
    
    @objc func btSendAction(){
        lib.sendMessage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

