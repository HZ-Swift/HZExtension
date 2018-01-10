//
//  ViewController.swift
//  HZExtensionDemo
//
//  Created by Harious on 2018/1/10.
//  Copyright © 2018年 zzh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        stringSubscriptDemo()

    }

    
    func stringSubscriptDemo() {
        let str = "012号⬆️yuio"

        print(str[0])
        print(str[3])
        print(str[4])
        print(str[8])
        print(str[9])
        print(str[20])

        print(str[1,0])
        print(str[1,2])
        print(str[4,5])
        print(str[4,6])
    
        print(str[(1, 5)])
        print(str[(-1, 5)])
        print(str[(1, 8)])
        print(str[(5, 4)])
    }

    
    


}

