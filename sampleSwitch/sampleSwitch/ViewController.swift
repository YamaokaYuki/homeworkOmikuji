//
//  ViewController.swift
//  sampleSwitch
//
//  Created by 山岡由季 on 2018/01/12.
//  Copyright © 2018年 山岡由季. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //スイッチがの状態が変わった時に発動
    @IBAction func tapSwitch(_ sender: UISwitch) {
        //isOn...Switchのオン/オフを表すプロパティ（Bool型）
        print(sender.isOn)
        
        if sender.isOn == true {
            print("スイッチオン")
            }else {
                print("スイッチオフ")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

