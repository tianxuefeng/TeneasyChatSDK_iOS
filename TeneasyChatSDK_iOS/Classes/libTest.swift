import UIKit
import Starscream
import SwiftProtobuf
//import Toast

public class libTest {
    public private(set) var text = "Teneasy Chat SDK 启动"
    //https://csapi.xdev.stream
    //let url = URL(string: "wss://csapi.xdev.stream/v1/gateway/h5?token=")!
    let url = URL(string: "wss://csapi.xdev.stream/v1/gateway/h5?token=CCcQARgEIBwoxqGWkN8w.qme55iCk3NM7LUN3febogBhwp0CbZVQ-15u0kwfTfti8VlRsNE3ycQHgl65RNZjTqnUNe4lB8ZCiYUoOozGrDw")!
    //acc=xuaofua001&pwd=xuaofua001&
    //let url = URL(string: "wss://csapi.xdev.stream?acc=mytenant10123&pwd=mytenant10123&token=")!
    var websocket : WebSocket? = nil
    public init() {
        print(text)
    }
    
    public func toastHello(vc : UIViewController){
        let alert = UIAlertController(title: "你好", message: "Message", preferredStyle: UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: { _ in
            self.sendMessage()
        }))
        vc.present(alert, animated: true, completion: nil)
    }
    
//https://swiftpackageregistry.com/daltoniam/Starscream
     public func callWebsocket(){
         let request = URLRequest(url: self.url)
        websocket = WebSocket(request: request)
         websocket?.request.timeoutInterval = 10000
         websocket?.delegate = self
         websocket?.connect()
         
         //websocket.write(string: "Hi Server!")
         print("call web socket")
     }
    
    deinit {
      if (websocket != nil){
          websocket!.disconnect()
          websocket!.delegate = nil
      }
    }
    
    public func sendMessage(){
            
        var msg = CommonMessage()
        var content = CommonMessageContent()
        content.data = "你好！需要什么帮助？"
        msg.content = content
        msg.sender = 0
        msg.chatID = 2692944494596
        msg.worker = 0
        msg.msgTime = Google_Protobuf_Timestamp()
        
        // Serialize to binary protobuf format:
        let msgData: Data = try! msg.serializedData()
        
       // var sendPayload = SCR
        
        var payLoad = Gateway_Payload()
        payLoad.data = msgData
        payLoad.act = .cssendMsg
        payLoad.id = 2
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
 /* public func toastHello(view : UIView){
        
        // create a new style
        var style = ToastStyle()

        // this is just one of many style options
        style.messageColor = .blue

        // present the toast with the new style
        view.makeToast("This is a piece of toast", duration: 3.0, position: .bottom, style: style)

        // or perhaps you want to use this style for all toasts going forward?
        // just set the shared style and there's no need to provide the style again
        ToastManager.shared.style = style
        view.makeToast("This is a piece of toast") // now uses the shared style

        // toggle "tap to dismiss" functionality
        ToastManager.shared.isTapToDismissEnabled = true

        // toggle queueing behavior
        ToastManager.shared.isQueueEnabled = true
    }*/
    
 

// MARK: - WebSocketDelegate
extension libTest : WebSocketDelegate {
    
    func websocketDidReceiveMessage(socket: WebSocketClient, text: String) {
        print("got some text: \(text)")
    }

   public func didReceive(event: WebSocketEvent, client: WebSocket){
       switch event {
       case .connected(let headers):
        print("connected")
        //print("connected \(headers)")
           sendMessage()
       case .disconnected(let reason, let closeCode):
         print("disconnected \(reason) \(closeCode)")
       case .text(let text):
         print("received text: \(text)")
       case .binary(let data):
           if data.count == 1{
               
           }else{
               let decodedInfo = try? Gateway_Payload(serializedData: data)
               let msgData = decodedInfo?.data
               
               if (decodedInfo?.act == .screcvMsg){
                   let msg = try? Gateway_SCRecvMessage(serializedData: msgData!)
                   let msC = msg?.msg
                   print(msC)
               }else if decodedInfo?.act == .schi{
                   let msg = try? Gateway_SCHi(serializedData: msgData!)
                   //let msC = msg?.token
                   print(msg)
               }else if decodedInfo?.act == .forward{
                   let msg = try? Gateway_CSForward(serializedData: msgData!)
                   //let msC = msg?.token
                   print(msg)
               }else{
                   print("received data: \(data)")
               }
           }

       case .pong(let pongData):
         print("received pong: \(pongData)")
       case .ping(let pingData):
         print("received ping: \(pingData)")
       case .error(let error):
         print("error \(error)")
       case .viabilityChanged:
         print("viabilityChanged")
       case .reconnectSuggested:
         print("reconnectSuggested")
       case .cancelled:
         print("cancelled")
       }
    }
}
