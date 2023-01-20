import UIKit
import Starscream
//import Toast

public class libTest: WebSocketDelegate {
    public private(set) var text = "Hello, World!"

    public init() {
        
        print(text)
    }
    
    public func toastHello(vc : UIViewController){
        let alert = UIAlertController(title: "你好", message: "Message", preferredStyle: UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
        vc.present(alert, animated: true, completion: nil)
    }
    
     public func callWebsocket(){
         //let url = URL(string: "ws://echo.websocket.org")!
         let url = URL(string: "wss://csapi.xdev.stream/v1/gateway/h5?token=")!
         let request = URLRequest(url: url)
         let websocket = WebSocket(request: request)
         websocket.delegate = self
         websocket.connect()
         //websocket.write(string: "Hi Server!")
         print("call web socket")
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
    
}
