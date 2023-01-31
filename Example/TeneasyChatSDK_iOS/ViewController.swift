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
            appendMsg(msg: msg.content.data)
        case .image(msg.image):
            print(msg.image)
            appendMsg(msg: "图片：" + msg.image.uri)
        case .video(msg.video):
            print("video")
        case .audio(msg.audio):
            print("audio")
        default:
            print("ddd")
        }
    }
    
    func connected(c: Bool) {
        if c == true{
            tvChatView.text.append("\n已连接上！\n\n")
        }else{
            //tvChatView.text.append("\n已断开连接\n\n")
            //tvChatView.text.append("\n重新连接\n")
            initSDK()
        }
    }
    
    func msgReceipt(msg: CommonMessage){
        tvChatView.text.append("                       " +  msg.content.data)
        if msg.msgID == 0{
            tvChatView.text.append("                    发送失败")
        }
      
        tvChatView.text.append("                                         " +  Date().getFormattedDate(format: "HH:mm:ss") + "\n\n")
    }
    
    func systemMsg(msg: String){
        appendMsg(msg: msg)
    }
    
    func appendMsg(msg: String){
        tvChatView.text.append(msg + "\n" +  Date().getFormattedDate(format: "HH:mm:ss") + "\n\n")
        //cpf
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tvChatView.text = "teneasy chat sdk 初始化"
        tvChatView.isUserInteractionEnabled = true
        tvChatView.isScrollEnabled = true
        
        initSDK()
    }
    
    func initSDK(){
        //从网页端把chatId和token传进sdk,
        lib = ChatLib(chatId: 2692944494603, token: "CCcQARgLICIor_Gtw-Aw._3b9m32P3f9PrimLohGJjs4Ya5yRf6QN-ZAgGskX6U3U2vdJh4HwZuTMeh3FOOQiqsaCHIAYuXxSN-u1A4cFAA")
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
        //lib.sendMessage(msg: txtMsg)
        //Send Image
        lib.sendMessageImage(url: "https://www.bing.com/th?id=OHR.ZebraTrio_ROW8661058210_1920x1080.jpg&rf=LaDigue_1920x1080.jpg")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

