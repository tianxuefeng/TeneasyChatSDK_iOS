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
    @IBOutlet weak var tvChatView: UITextView!
    var lib = ChatLib()
    func receivedMsg(msg: CommonMessage) {
        print(msg)
        tvChatView.text.append(msg.content.data)
    }
    
    func connected(c: Bool) {
        if c == true{
            tvChatView.text.append("\n已连接上！\n")
        }else{
            tvChatView.text.append("\n已断开连接\n")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvChatView.text = "teneasy chat sdk 初始化"
        //从网页端把chatId和token传进sdk
        lib = ChatLib(chatId: 2692944494597, token: "CCcQARgFIBwoiqzald8w.Lvq-lMjWFQ5xL8_UBZOQLLG0rhXKBWIfUjSWwYthb9Y0GpWn5YY-tV_U47KO59U4utHUqoNgYWwSTqVGjJ7WDg")
        lib.callWebsocket()
        lib.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
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

