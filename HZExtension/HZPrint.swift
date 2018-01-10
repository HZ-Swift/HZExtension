//
//  HZPrint.swift
//  HZExtensionDemo
//
//  Created by Harious on 2018/1/10.
//  Copyright © 2018年 zzh. All rights reserved.
//

import Foundation

/// 在release模式下不打印信息
public func hz_print<N>(_ message: N?, fileName: String = #file, methodName: String = #function, lineNumber: Int = #line){
    #if DEBUG // 若是Debug模式下，则打印
        guard let msg = message else {
            print("--  nil  --")
            return
        }
        if let dict = msg as? [String : Any] {
            print(dict as NSDictionary)
        } else if let arr = msg as? [Any] {
            print(arr as NSArray)
        } else {
            print(msg)
        }
    #endif
}
