//
//  Menu5ViewController.swift
//  MyCafe
//
//  Created by 503 on 2019/11/03.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit
import WebKit

class Menu5ViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        
        loadWebPage("http://paikdabang.com/store/")
    }
    func loadWebPage(_ url:String) {
        let myURL = URL(string: url)
        let myRequest = URLRequest(url: myURL!)
        myWebView.load(myRequest)
    }

}
