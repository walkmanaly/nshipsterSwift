//
//  ControlFlow.swift
//  nshipsterSwift
//
//  Created by Nick on 2018/8/21.
//  Copyright © 2018年 Nick. All rights reserved.
//

import Foundation

func control() {
    
    let i = 1
    // “Swift’s type safety prevents non-Boolean values from being substituted for Bool”
    // 摘录来自: Apple Inc. “The Swift Programming Language (Swift 4.2)。” iBooks.
    // 编译时错误
    
//    if i {
//        print("hello")
//    }
    
    if i == 1 {
        print("world")
    }
    
}
