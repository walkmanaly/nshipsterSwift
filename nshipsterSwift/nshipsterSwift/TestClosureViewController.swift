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
        // Do any additional setup after loading the view.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
