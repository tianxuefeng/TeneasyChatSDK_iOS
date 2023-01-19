import UIKit
//import Toast

public struct libTest {
    public private(set) var text = "Hello, World!"

    public init() {
        
        print(text)
    }
    
    public func toastHello(vc : UIViewController){
        let alert = UIAlertController(title: "你好", message: "Message", preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        vc.present(alert, animated: true, completion: nil)
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
