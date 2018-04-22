//
//  PrivatePolicyController.swift
//  Flex
//
//  Created by Joe Suzuki on 4/22/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class PrivatePolicyController: UIViewController, UIWebViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myWebView:UIWebView = UIWebView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        
        self.view.addSubview(myWebView)
        
        myWebView.delegate = self
        
        // Load local html file into web view
        let myProjectBundle:Bundle = Bundle.main
        
        let filePath:String = myProjectBundle.path(forResource: "privacy_policy", ofType: "html")!
        
        let myURL = URL(string: filePath);
        let myURLRequest:URLRequest = URLRequest(url: myURL!)
        
        myWebView.loadRequest(myURLRequest)
    }
    
    func webViewDidStartLoad(_ webView: UIWebView){
        print("Started to load")
    }
    func webViewDidFinishLoad(_ webView: UIWebView){
        print("Finished loading")
    }
    
}

