import UIKit
import Starscream
import SwiftProtobuf
//import Toast

public class libTest {
    public private(set) var text = "Hello, World!"
    let url = URL(string: "wss://csapi.xdev.stream/v1/gateway/h5?token=")!
    var websocket : WebSocket? = nil
    public init() {
        print(text)
    }
    
    public func toastHello(vc : UIViewController){
        let alert = UIAlertController(title: "你好", message: "Message", preferredStyle: UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: { _ in
            //self.websocket?.write(string: "日！")
            self.websocket?.write(string: "ddd", completion: ( {
                let d = CommonDeviceType.ios
                print(d)
            }))
            print("Sent 日")
        }))
        vc.present(alert, animated: true, completion: nil)
    }
    
//https://swiftpackageregistry.com/daltoniam/Starscream
     public func callWebsocket(){
         //let url = URL(string: "ws://echo.websocket.org")!
         //wss://127.0.0.1:8013/v1/gateway/h5?token=CAsQAxgBIAwojeyt6tQw.NcnU2L85lR8ImA3rTbHl5f8UCTueNQ8oyj7Kb4w2EEazoywQAHDoh5sxTOflvfUkgvWBuE3llWNvH5rDSLHCAQ
         let url = URL(string: "wss://csapi.xdev.stream/v1/gateway/h5?token=CAsQAxgBIAwojeyt6tQw.NcnU2L85lR8ImA3rTbHl5f8UCTueNQ8oyj7Kb4w2EEazoywQAHDoh5sxTOflvfUkgvWBuE3llWNvH5rDSLHCAQ")!
         let request = URLRequest(url: url)
        websocket = WebSocket(request: request)
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
         print("connected \(headers)")
       case .disconnected(let reason, let closeCode):
         print("disconnected \(reason) \(closeCode)")
       case .text(let text):
         print("received text: \(text)")
       case .binary(let data):
         print("received data: \(data)")
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
