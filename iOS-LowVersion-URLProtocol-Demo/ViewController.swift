//
//  ViewController.swift
//  iOS-LowVersion-URLProtocol-Demo
//
//  Created by ByteDance on 7/24/24.
//

import UIKit
import WebKit
class ViewController: UIViewController {

    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // 创建 WKWebView 实例
        let configuration = WKWebViewConfiguration()

        webView = WKWebView(frame: self.view.bounds, configuration: configuration)
        self.view.addSubview(webView)
        
        // 加载一个测试 URL
        if let url = URL(string: "https://www.baidu.com") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        

        // 加载本地文件
//        if let pngPath = Bundle.main.path(forResource: "test", ofType: "png") {
//            let url = URL(fileURLWithPath: pngPath)
//            let request = URLRequest(url: url)
//            webView.load(request)
//        }

        
    }


}

