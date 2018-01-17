//
//  ViewController.swift
//  sampleSlider
//
//  Created by 山岡由季 on 2018/01/12.
//  Copyright © 2018年 山岡由季. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //スライダーの値を変えた時発動
    @IBAction func changeSlider(_ sender: UISlider) {
        print(sender.value)
        //TODO:つまみの位置を表す数字sender.valueを使用して、次のif文を書いてください
        //0.5以下の場合、デバックエリアに「音が小さいです」、そうでない場合は「音が大きいです」と表示しましょう
        if(sender.value<0.5){
                print("音が小さいです")
        }else{
            print("音が大きいです")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

