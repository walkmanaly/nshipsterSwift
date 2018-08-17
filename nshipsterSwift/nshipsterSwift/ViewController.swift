//
//  ViewController.swift
//  nshipsterSwift
//
//  Created by Nick on 2018/7/13.
//  Copyright © 2018年 Nick. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        print("hello world")
//        gcdDemo1()
//        gcdDemo5()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super .viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let secvc = TestClosureViewController()
        secvc.secClosure = {(str : String) -> Void in
            print(str)
        }
        navigationController?.pushViewController(secvc, animated: true)
    }
    
    func gcdDemo1() -> Void {
        let queue: DispatchQueue  = DispatchQueue(label: "com.nick.gcddemo")
        print("before")
        queue.async {
            print("hello")
        }
        print("after")
    }
    
    func gcdDemo2() {
        // 调度组
        let groupQueue = DispatchGroup()
        
        // 创建一个并发队列
        let qos = DispatchQoS.default
        let attr = DispatchQueue.Attributes.concurrent
        let fre = DispatchQueue.AutoreleaseFrequency.never
        let queue1 = DispatchQueue(label: "com.nick.demo", qos: qos, attributes: attr, autoreleaseFrequency: fre, target: nil)
        
        // 将任务添加到调度组，队列异步执行事件
        queue1.async(group: groupQueue) {
            sleep(2)
            print(2)
        }
        
        queue1.async(group: groupQueue) {
            sleep(1)
            print(1)
        }
        
        queue1.async(group: groupQueue) {
            sleep(3)
            print(3)
        }
        
        groupQueue.notify(queue: queue1) {
            print("all is done")
        }
    }
    
    func gcdDemo3() {
        // 不能再主队列添加同步任务，造成死锁
        let queue = DispatchQueue.main
        print("before")
        queue.sync {
            print("excute")
        }
        print("after")
    }
    
    func gcdDemo4() {
        // 可以往全局队列添加同步任务，等所添加任务执行完，再往下执行(造成卡顿)
        let queue = DispatchQueue.global()
        print("before")
        queue.sync {
            print("excute")
            sleep(3)
        }
        print("after")
    }
    
    func gcdDemo5() {
        let queue = DispatchQueue(label: "com.nick.demo5", qos: DispatchQoS.default, attributes: DispatchQueue.Attributes.concurrent, autoreleaseFrequency: DispatchQueue.AutoreleaseFrequency.never, target: nil)
        
        queue.async {
            // 开启子线程下载图片
            print("download image")
            sleep(2)
            DispatchQueue.main.sync {
                // 回到主线程更新UI
                print("set image")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

