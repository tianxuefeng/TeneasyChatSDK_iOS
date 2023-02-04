//
//  ViewController.swift
//  TeneasyChatSDK_iOS
//
//  Created by 7938813 on 01/19/2023.
//  Copyright (c) 2023 7938813. All rights reserved.
//

import UIKit
import TeneasyChatSDK_iOS
import SwiftDate

class ViewController: UIViewController, teneasySDKDelegate {
    @IBOutlet weak var tvChatView: UITextView!
    var lib = ChatLib()
    var payLoadId = 0
    
    func connected(c: Bool) {
        if c == true{
            tvChatView.text.append("\n已连接上！\n\n")
        }else{
            //tvChatView.text.append("\n已断开连接\n\n")
            //tvChatView.text.append("\n重新连接\n")
            initSDK()
        }
    }
    
    //收到对方的消息
    func receivedMsg(msg: CommonMessage) {
        print(msg)
        
        //let time = displayLocalTime(from: msg.msgTime.timeIntervalSince1970)
        let time = displayLocalTime(from: msg.msgTime.date)
        print(time)
       
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
    
    //发送的消息收到回执
    func msgReceipt(msg: CommonMessage, payloadId : UInt64 = 0){
        var myMsg = ""
        switch msg.payload{
        case .content(msg.content):
            print("text")
            print(msg.msgTime.date)
            myMsg = msg.content.data
        case .image(msg.image):
            print(msg.image)
            myMsg = "图片：" + msg.image.uri
        default:
            print("ddd")
        }
        
        tvChatView.text.append("                       " +  myMsg)
        if msg.msgID == 0{
            tvChatView.text.append("                    发送失败")
        }
      
        let time = displayLocalTime(from: msg.msgTime.date)
        print(time)
        
        tvChatView.text.append("                                         " +  time + "\n\n")
    }
    
    //收到的系统消息
    func systemMsg(msg: String){
        appendMsg(msg: msg)
    }
    
    func appendMsg(msg: String){
        tvChatView.text.append(msg + "\n" +  Date().getFormattedDate(format: "HH:mm") + "\n\n")
        //cpf
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvChatView.text = "teneasy chat sdk 初始化\n正在连接。。。\n"
        tvChatView.isUserInteractionEnabled = true
        tvChatView.isScrollEnabled = true
        
        initSDK()
    }
    
    func initSDK(){
        //从网页端把chatId和token传进sdk,2692944494603
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
    
    override func viewDidDisappear(_ animated: Bool) {
        lib.sendHeartBeat()
    }
    
    @objc func btSendAction(){
        let txtMsg = "你好！需要什么帮助？\n"
        lib.sendMessage(msg: txtMsg)
        //Send Image
        //lib.sendMessageImage(url: "https://www.bing.com/th?id=OHR.ZebraTrio_ROW8661058210_1920x1080.jpg&rf=LaDigue_1920x1080.jpg")
    }
    
    //用于转换服务器的时间是GMT+0
    func displayLocalTime(from timestamp: TimeInterval) -> String {
        let gmtDate = Date(timeIntervalSince1970: timestamp)
        let zone = NSTimeZone.system // 获得系统的时区
        let time = zone.secondsFromGMT(for: gmtDate)// 以秒为单位返回当前时间与系统格林尼治时间的差
        let msgDate = gmtDate.addingTimeInterval(TimeInterval(time))// 然后把差的时间加上,就是当前系统准确的时间
        
        if Calendar.current.isDateInToday(gmtDate) {
            return String(format: "%.2d", msgDate.hour) + ":" + String(format: "%.2d", msgDate.minute)
        }
        else if Calendar.current.isDateInYesterday(msgDate) {
            return "昨天 " + String(format: "%.2d", msgDate.hour) + ":" + String(format: "%.2d", msgDate.minute)
        }
        else if msgDate.isThisYear() {
            return "\(msgDate.month)月\(msgDate.day)日"
        }
        else {
            return "\(msgDate.year)/\(msgDate.month)/\(msgDate.day)"
        }
    }
    
    //把任何服务器时间转换为本地时间，很神奇的一个方案
    func displayLocalTime(from msgDate: Date) -> String {
         let calendar = Calendar.current
         let hour = calendar.component(.hour, from: msgDate)
         let minutes = calendar.component(.minute, from: msgDate)
         
        if Calendar.current.isDateInToday(msgDate) {
            return String(format: "%.2d", hour) + ":" + String(format: "%.2d", minutes)
        }
        else if Calendar.current.isDateInYesterday(msgDate) {
            return "昨天 " + String(format: "%.2d", msgDate.hour) + ":" + String(format: "%.2d", msgDate.minute)
        }
        else if msgDate.isThisYear() {
            return "\(msgDate.month)月\(msgDate.day)日"
        }
        else {
            return "\(msgDate.year)/\(msgDate.month)/\(msgDate.day)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

