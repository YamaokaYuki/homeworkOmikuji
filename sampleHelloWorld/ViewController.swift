//
//  ViewController.swift
//  sampleHelloWorld
//
//  Created by 山岡由季 on 2018/01/11.
//  Copyright © 2018年 山岡由季. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    
    
    //画面が起動した時に一回発動するメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //ラベルの表示文字を変更する
        myLabel.text="こんにちは、世界"
    }
    //Tapが押された時に発動するメソッド
    @IBAction func tapBtn(_ sender: UIButton) {
        
        print("こんにちは、セブ")
        myLabel.text = "こんにちは、セブ"
        
    }
    
    @IBAction func taptapBtn(_ sender: UIButton) {
        print("こんにちは、NexSeed")
        myLabel.text = "こんにちは、NexSeed"
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

