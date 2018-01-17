//
//  ViewController.swift
//  sampleTextView
//
//  Created by 山岡由季 on 2018/01/12.
//  Copyright © 2018年 山岡由季. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var closeBtn: UIButton!
    
    //画面が表示された時1回発動するメソッド
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //プログラムでプロパティ指定
        myTextView.text = "Hello"//文字の設定
        
        //TODO: for文を使用して、myTextViewにHelloを10個表示してください
        //nは繰り返している回数が代入される変数
        for n in 1...10{
            //繰り返したい処理を記述
            myTextView.text = "\(myTextView.text!)Hello"
            
        }
        
        
        myTextView.textColor = UIColor.blue//色の設定
        myTextView.font = UIFont(name: "AmericanTypewriter", size:40)
        
        myTextView.textAlignment = NSTextAlignment.center
        myTextView.isEditable = false //編集不可(読み取り専用)
        
    }

    //閉じるボタンが押された時
    @IBAction func tapClose(_ sender: UIButton) {
        //textViewに紐づいたキーボードを閉じる
        myTextView.resignFirstResponder()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

