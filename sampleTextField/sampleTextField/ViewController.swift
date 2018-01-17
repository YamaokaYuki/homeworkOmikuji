//
//  ViewController.swift
//  sampleTextField
//
//  Created by 山岡由季 on 2018/01/12.
//  Copyright © 2018年 山岡由季. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //リターンキーが押された時発動
    @IBAction func tapReturn(_ sender: UITextField) {
        //入力された文字をデバックエリアに表示
        print(sender.text!)
        
        //TODO:myLabelという名前のラベルを用意して、入力された文字をラベル上に表示する
        myLabel.text = sender.text
        
        //TODO: テキストフィールドにtestと入力されていたら、myLabelには「テストです」と表示、それ以外はそのままの文字を表示してください
      
        let str:String! = myTextField.text
        if let test = str.range(of: "test") {
            myLabel.text = "テストです"
        } else {
            myLabel.text = sender.text
        }

            
        
        
    }
    @IBOutlet weak var myLabel: UILabel!
    //TODO: ボタンを一つ用意して、タップされた時、テキストフィールドの内容、ラベルどちらも空文字にしてリセットする処理を作る
    
    
    @IBAction func reset(_ sender: UIButton) {
        myLabel.text = ""
        myTextField.text=""
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

