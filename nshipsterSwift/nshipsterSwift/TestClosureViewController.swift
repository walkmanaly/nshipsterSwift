//
//  SecondViewController.swift
//  nshipsterSwift
//
//  Created by Nick on 2018/7/15.
//  Copyright © 2018年 Nick. All rights reserved.
//

import UIKit

typealias sendStrClosure = (_ str :String) -> Void

class TestClosureViewController: UIViewController {

    var secClosure: sendStrClosure?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        if secClosure != nil {
            secClosure!("hello")
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
