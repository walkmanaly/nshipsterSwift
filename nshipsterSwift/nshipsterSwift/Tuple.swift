//
//  Tuple.swift
//  nshipsterSwift
//
//  Created by Nick on 2018/8/21.
//  Copyright © 2018年 Nick. All rights reserved.
//

import Foundation

func tuple() -> Void {
    let status = (404, "Error not found")
    
    let myStatus = status
    print(myStatus.0)
    print(myStatus.1)
    
    let (netStatus, decription) = status
    print(netStatus)
    print(decription)
    
    let (myNetStatus, _) = status
    print(myNetStatus)
    
    let succeedNet = (succeedCode: 200, desc: "succeed")
    print(succeedNet.succeedCode)
    print(succeedNet.desc)
}
