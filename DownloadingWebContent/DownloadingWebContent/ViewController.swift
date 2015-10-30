
//
//  ViewController.swift
//  DownloadingWebContent
//
//  Created by Luiz Carlos Gonçalves dos Anjos on 29/10/15.
//  Copyright © 2015 Luiz Carlos Gonçalves dos Anjos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let link = "http://www.stackoverflow.com"
        let url = NSURL(string: link)!
        self.webview.loadRequest(NSURLRequest(URL: url))
        
        /*
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
            //task complete
            
            if let urlContent = data{
                //print(urlContent)
                let webContent = NSString(data: data!, encoding: NSUTF8StringEncoding)
                print(webContent)
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.webview.loadHTMLString(String(webContent!), baseURL: nil)
                })
                
                
            }else{
                //show error
            }
        })
        task.resume()
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

