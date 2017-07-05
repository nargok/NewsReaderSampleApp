//
//  DetailViewController.swift
//  newsReaderApp
//
//  Created by 後閑諒一 on 2017/07/05.
//  Copyright © 2017年 ryoichi.gokan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var link:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: self.link) {  // linkプロパティを引数にしてURLクラスのurlインスタンスを作成　不正なurlの場合は{}が実行されない
            let request = URLRequest(url: url) // urlインスタンスを引数にしてURLRequestクラスのrequestインスタンスを作成 downloadしたデータの保存方法を設定
            self.webView.loadRequest(request)  // requestインスタンスを引数にしてwebViewプロパティのloadRequestメソッドを実行する downloadしたデータをWebViewに表示する。同じページを出力するときに再度ダウンロードしない
        }
    }
    
}
