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
//    func receivedMsg2(msg: EasyMessage) {
//        print(msg)
//    }
    
    
    
    @IBOutlet weak var tvChatView: UITextView!
    
    func receivedMsg(msg: String) {
        print(msg)
        tvChatView.text.append(msg + "\n")
    }
    
    func connected(c: Bool) {
        if c == true{
            tvChatView.text.append("\n已连接上！\n")
        }else{
            tvChatView.text.append("\n已断开连接\n")
        }
    }
    
    var lib = chatLib()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tvChatView.text = "teneasy chat sdk 初始化"
        lib.callWebsocket()
        lib.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //lib.toastHello(vc: self)
    
        let btSend = UIButton()
        btSend.frame = CGRect(x: 100, y: 600, width: 200, height: 200)
        btSend.setTitleColor(UIColor.systemRed, for: UIControlState.normal)
        btSend.setTitle("Send", for: UIControlState.normal)
        self.view.addSubview(btSend)
        btSend.addTarget(self, action:#selector(btSendAction), for:.touchUpInside)
    }
    
    @objc func btSendAction(){
        let msg = "你好！需要什么帮助？\n"
        tvChatView.text.append("                       " + msg)
        lib.sendMessage(msg: msg)
        
        let c = CommonMessage()
        print(c.content)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

