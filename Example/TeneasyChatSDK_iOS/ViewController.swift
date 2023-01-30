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
       
        switch msg.payload{
        case .content(msg.content):
            print("text")
        case .image(msg.image):
            print(msg.image)
            appendMsg(msg: msg.image.uri)
        case .audio(msg.audio):
            print("audio")
        default:
            print("ddd")
        }
    }
    
    func connected(c: Bool) {
        if c == true{
            tvChatView.text.append("\n已连接上！\n")
        }else{
            tvChatView.text.append("\n已断开连接\n")
        }
    }
    
    func msgReceipt(msg: CommonMessage){
        tvChatView.text.append("                       " +  msg.content.data)
        tvChatView.text.append("                                         " +  Date().getFormattedDate(format: "HH:mm:ss") + "\n\n")
    }
    
    func appendMsg(msg: String){
        tvChatView.text.append(msg + "\n" +  Date().getFormattedDate(format: "HH:mm:ss") + "\n\n")
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
        let txtMsg = "你好！需要什么帮助？\n"
        lib.sendMessage(msg: txtMsg)
        let c = CommonMessage()
        print(c.content)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

