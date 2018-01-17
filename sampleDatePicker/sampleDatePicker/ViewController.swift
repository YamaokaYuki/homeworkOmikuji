//
//  ViewController.swift
//  sampleDatePicker
//
//  Created by 山岡由季 on 2018/01/15.
//  Copyright © 2018年 山岡由季. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    //アプリが起動して画面が表示されるメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //選択肢の範囲を設定
        //DateFormatterを使って文字型から日付型に変換する
        
        let df = DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        
        //選択可能な最小値（最も日付が過去のもの）を決定（2018/01/01）
        myDatePicker.minimumDate = df.date(from: "2018/01/01")
        
        //選択可能な最大値（最も日付が未来のもの）を決定(2018/03/31)
        myDatePicker.maximumDate = df.date(from: "2018/03/31")
        
        //初期値を設定
        myDatePicker.date = df.date(from: "2018/01/21")!
    }
    //DatePickerの選択された日付が変更されたとき発動
    @IBAction func changeDate(_ sender: UIDatePicker) {
        //選択されている日付をデバックエリアに表示
        print(sender.date)
        
        //日付のフォーマットを設定
        //初期化
        let df = DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        
        df = DateFormatter()
        
        //時差補正(日本時間に設定)
        //identifierの部分はSwiftで定義されている地域コード
        df.locale = Locale(identifier: "ja_JP")
        
        
        let strDate = df.string(from: sender.date)
        print("フォーマット変換後:\(strDate)")
    }
    
    //メモリ不足を感知した時に呼ばれるメソッド
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

