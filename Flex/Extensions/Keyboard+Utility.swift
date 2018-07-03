//
//  Keyboard+Utility.swift
//  Flex
//
//  Created by Joe Suzuki on 3/13/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//


import Foundation
import UIKit

extension UIViewController : UIGestureRecognizerDelegate{
    class Keyboard {
        static var pushValue : CGFloat = 0
    }
    
    func applyKeyboardPush(){
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        view.alpha = 0.7
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0{
                self.view.frame.origin.y -= keyboardSize.height - 100
                Keyboard.pushValue = keyboardSize.height
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        view.alpha = 1
        if ((notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue) != nil {
            if self.view.frame.origin.y != 0{
                self.view.frame.origin.y += Keyboard.pushValue - 100
            }
        }
    }
    
    func applyKeyboardDismisser(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        tap.delegate = self
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        guard let view = touch.view else {
            return true
        }
        if view.isDescendant(of: self.view) && view.isKind(of: UIButton.self){
            return false
        }
        return true
    }
}
