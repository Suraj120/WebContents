//
//  ViewController.swift
//  WebContents
//
//  Created by Suman Kumar on 2/17/19.
//  Copyright © 2019 tcs. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let url = URL(string: "https://www.stackoverflow.com")!
//        let request = URLRequest(url: url)
//        webView.load(request)
        
        if let url = URL(string: "https://www.stackoverflow.com"){
            let request = URLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) {data,response,error in
                
                if (error) == nil {
                    if let unwrappedData = data {
                        let dataString = String(data: unwrappedData, encoding: String.Encoding.utf8)
                        print(dataString!)
                        DispatchQueue.main.sync {
                            //update user interface
                        }
                    }
                    
                } else {
                    print(error?.localizedDescription)
                }
                
            }
        
        task.resume()
        
    }

        print("Hey dere")
    }
}
