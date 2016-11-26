//
//  SecondViewController.swift
//  Assignment4
//
//  Created by Venkateshprasad Ashwathnarayana on 10/23/16.
//  Copyright © 2016 Venkateshprasad Ashwathnarayana. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var web: UIWebView!
    
    @IBOutlet var url: UITextField!
    
    
    
    private func textFieldShouldReturn(textField: UITextField)
    {
    url.resignFirstResponder()
    web.loadRequest(NSURLRequest(url: NSURL(string: url.text!) as! URL) as URLRequest)
    web.loadRequest(NSURLRequest(url: NSURL(string: "http://apple.com") as! URL) as URLRequest)
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        textFieldShouldReturn(textField: url)
            /*if let url = NSURL(string: x) {
            let canOpen = UIApplication.shared.canOpenURL(url as URL)
        }*/
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

