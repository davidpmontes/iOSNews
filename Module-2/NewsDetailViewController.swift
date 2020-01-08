//
//  NewsDetailViewController.swift
//  Module-2
//
//  Created by David Montes on 1/7/20.
//  Copyright © 2020 LearnAppMaking. All rights reserved.
//

import UIKit
import WebKit

class NewsDetailViewController: UIViewController
{
    @IBOutlet weak var imageView:UIImageView?
    @IBOutlet weak var titleLabel:UILabel?
    @IBOutlet weak var authorLabel:UILabel?
    @IBOutlet weak var webView:WKWebView?
    @IBOutlet weak var heightConstraint:NSLayoutConstraint?
    var author:String?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
