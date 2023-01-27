//
//  ViewController.swift
//  TeneasyChatSDK_iOS
//
//  Created by 7938813 on 01/19/2023.
//  Copyright (c) 2023 7938813. All rights reserved.
//

import UIKit
import TeneasyChatSDK_iOS


class ViewController: UIViewController, teneasySDKDelegate {
    func receivedMsg(msg: String) {
        print(msg)
    }
    
    var lib = libTest()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lib.callWebsocket()
        lib.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        lib.toastHello(vc: self)
    
        let btSend = UIButton()
        btSend.frame = CGRect(x: 100, y: 300, width: 200, height: 200)
        btSend.setTitleColor(UIColor.systemRed, for: UIControlState.normal)
        btSend.setTitle("Send", for: UIControlState.normal)
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

