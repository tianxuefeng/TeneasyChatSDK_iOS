import UIKit
import Starscream
import SwiftProtobuf
//import Toast

//https://swiftpackageregistry.com/daltoniam/Starscream
//https://www.kodeco.com/861-websockets-on-ios-with-starscream
public protocol teneasySDKDelegate{
    //func receivedMsg(msg: String)
    func receivedMsg(msg: CommonMessage)
    func connected(c: Bool)
}

/*
extension teneasySDKDelegate {
    func receivedMsg2(msg: EasyMessage) {
        /* return a default value or just leave empty */
    }
}*/

public class ChatLib {
    public private(set) var text = "Teneasy Chat SDK 启动"
    //https://csapi.xdev.stream
    //let url = URL(string: "wss://csapi.xdev.stream/v1/gateway/h5?token=")!
    //acc=xuaofua001&pwd=xuaofua001&
    //let url = URL(string: "wss://csapi.xdev.stream?acc=mytenant10123&pwd=mytenant10123&token=")!
    var baseUrl = "wss://csapi.xdev.stream/v1/gateway/h5?token="
    var websocket : WebSocket? = nil
    var isConnected = false
    open var delegate : teneasySDKDelegate? = nil
    var payloadId : Int64? = 0
    var sendingMsg: String = ""
    var chatId: Int64? = 0
    //var token: String? = ""
    public init() {
    }
    public init(chatId: Int64, token: String) {
        self.chatId = chatId
        //self.token = token
        baseUrl = baseUrl + token
        print(text)
    }

     public func callWebsocket(){
         //var request = URLRequest(url: URL(string: baseUrl))
         var request = URLRequest(url: URL(string: baseUrl)!)
         request.setValue("chat,superchat", forHTTPHeaderField: "Sec-WebSocket-Protocol")
         websocket = WebSocket(request: request)
         websocket?.request.timeoutInterval = 5 // Sets the timeout for the connection
         websocket?.delegate = self
         websocket?.connect()
         
         /* 添加header的办法
          request.setValue("someother protocols", forHTTPHeaderField: "Sec-WebSocket-Protocol")
          request.setValue("14", forHTTPHeaderField: "Sec-WebSocket-Version")
          request.setValue("chat,superchat", forHTTPHeaderField: "Sec-WebSocket-Protocol")
          request.setValue("Everything is Awesome!", forHTTPHeaderField: "My-Awesome-Header")
          */

         print("call web socket")
     }
    
    deinit {
      if (websocket != nil){
          websocket!.disconnect()
          websocket!.delegate = nil
      }
    }
    
    public func deleteMessage(){
        
    }
    
    public func sendMessage(msg: String){
//        if !isConnected{
//            print("断开了")
//        }
        
        sendingMsg = msg//临时放到一个变量，如果失败，SDK可以自动重试
            
        //发送信息的封装，有四层
        //payload -> CSSendMessage -> common message -> CommonMessageContent
        
        //第一层
        var content = CommonMessageContent()
        content.data = msg
        
        //第二层
        var msg = CommonMessage()
        msg.content = content
        msg.sender = 0
        msg.chatID = 2692944494597
        msg.worker = 3
        msg.msgTime = Google_Protobuf_Timestamp()
        
        //第三层
        var cSendMsg = Gateway_CSSendMessage()
        cSendMsg.msg = msg
        // Serialize to binary protobuf format:
        let cSendMsgData: Data = try! cSendMsg.serializedData()
        
        //第四层
        var payLoad = Gateway_Payload()
        payLoad.data = cSendMsgData
        payLoad.act = .cssendMsg
        self.payloadId! += 1
        //self.payloadId! += Int64.random(in: 1000...19999)
        let bigUInt:UInt64 = UInt64(self.payloadId!)
        payLoad.id = bigUInt
        let binaryData: Data = try! payLoad.serializedData()
        
        self.websocket?.write(data: binaryData, completion: ({
           print("msg sent")
        }))
    }
    
    private func serilizeSample(){
        var info = CommonPhoneNumber()
        info.countryCode = 65
        info.nationalNumber = 99999
        
        // Serialize to binary protobuf format:
        let binaryData: Data = try! info.serializedData()

        // Deserialize a received Data object from `binaryData`
        let decodedInfo = try? CommonPhoneNumber(serializedData: binaryData)

        // Serialize to JSON format as a Data object
        let jsonData: Data = try! info.jsonUTF8Data()

        // Deserialize from JSON format from `jsonData`
        let receivedFromJSON = try! CommonPhoneNumber(jsonUTF8Data: jsonData)
    }
}

// MARK: - WebSocketDelegate
extension ChatLib : WebSocketDelegate {
    
    func websocketDidReceiveMessage(socket: WebSocketClient, text: String) {
        print("got some text: \(text)")
    }

   public func didReceive(event: WebSocketEvent, client: WebSocket){
       switch event {
       case .connected(let headers):
           print("connected" + headers.description)
           self.delegate?.connected(c: true)
           if (!sendingMsg.isEmpty){
               sendingMsg = ""
               sendMessage(msg: sendingMsg)
           }
       case .disconnected(let reason, let closeCode):
         print("disconnected \(reason) \(closeCode)")
       case .text(let text):
         print("received text: \(text)")
       case .binary(let data):
           if data.count == 1{
               print("在别处登录了")
           }else{
               let payLoad = try? Gateway_Payload(serializedData: data)
               let msgData = payLoad?.data
               
               if (payLoad?.act == .screcvMsg){
                   let msg = try? Gateway_SCRecvMessage(serializedData: msgData!)
                   if let msC = msg?.msg{

                    delegate?.receivedMsg(msg: msC)
                   }
               }else if payLoad?.act == .schi{
                   let msg = try? Gateway_SCHi(serializedData: msgData!)
                   self.payloadId = msg?.id
                   print(msg!)
               }else if payLoad?.act == .forward{
                   let msg = try? Gateway_CSForward(serializedData: msgData!)
                   print(msg!)
               }else if payLoad?.act == .scsendMsgAck{
                   let msg = try? Gateway_SCSendMessage(serializedData: msgData!)
                   print("消息回执")
                   //delegate?.receivedMsg(msg: msg.)
                   print(msg!)
               }
               else{
                   print("received data: \(data)")
               }
           }

       case .pong(let pongData):
         print("received pong: \(pongData)")
       case .ping(let pingData):
         print("received ping: \(pingData)")
       case .error(let error):
          // self.delegate?.connected(c: false)
         print("error \(error)")
       case .viabilityChanged:
         print("viabilityChanged")
       case .reconnectSuggested:
         print("reconnectSuggested")
       case .cancelled:
           self.delegate?.connected(c: false)
         print("cancelled")
       }
    }
    
    
    /*public func toastHello(vc : UIViewController){
        let alert = UIAlertController(title: "你好", message: "Message", preferredStyle: UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: { _ in
           
        }))
        vc.present(alert, animated: true, completion: nil)
    }*/
}
