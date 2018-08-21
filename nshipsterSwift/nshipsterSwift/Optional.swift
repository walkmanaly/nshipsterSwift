//
//  Optional.swift
//  nshipsterSwift
//
//  Created by Nick on 2018/8/22.
//  Copyright © 2018年 Nick. All rights reserved.
//

import Foundation

func testOptional () {
    let maybeNumber = "123"
    let number = Int(maybeNumber)
    
    /*
     Optional Binding
     */
    // 摘录来自: Apple Inc. “The Swift Programming Language (Swift 4.2)。” iBooks.
    if let number = number {
        print(number)
    }
    
    if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
        print("\(firstNumber) < \(secondNumber) < 100")
    }
    // Prints "4 < 42 < 100"
    
    if let firstNumber = Int("4") {
        if let secondNumber = Int("42") {
            if firstNumber < secondNumber && secondNumber < 100 {
                print("\(firstNumber) < \(secondNumber) < 100")
            }
        }
    }
}
