//
//  VarAndLet.swift
//  nshipsterSwift
//
//  Created by Nick on 2018/8/21.
//  Copyright © 2018年 Nick. All rights reserved.
//

import Foundation

struct Test {
    var name: String; var age: Int
    let genser: Bool
    let min = UInt8.min     // 0
    let max = UInt8.max     // 255
    
    /*
     A decimal number, with no prefix           十进制
     A binary number, with a 0b prefix          二进制
     An octal number, with a 0o prefix          八进制
     A hexadecimal number, with a 0x prefix     十六进制
     摘录来自: Apple Inc. “The Swift Programming Language (Swift 4.2)。” iBooks.
     */
    let decimalNumber = 17
    let binaryNumber = 0b10001
    let octalNumber = 0o21
    let hexadecimalNumber = 0x11
    
    /*
     Integer Conversion
     同类型的数据才能进行运算，不同类型要转换后才能运算
     */
    var twoThounsand: UInt16 = 2_000
    var one: UInt8 = 1
    //let result = twoThounsand + UInt16(one)
    
}




