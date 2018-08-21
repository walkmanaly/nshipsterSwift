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
    let min = UInt8.min
    let max = UInt8.max
    
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
}




