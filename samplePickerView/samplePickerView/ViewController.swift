//
//  ViewController.swift
//  samplePickerView
//
//  Created by 山岡由季 on 2018/01/15.
//  Copyright © 2018年 山岡由季. All rights reserved.
//

import UIKit

//1.プロトコル(手段、特定の部品を操る能力)を追加


class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    //メンバ変数：クラス内でのメソッド全てで使用できる
     var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    
    //2.ピッカービューの列数を決定する
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //１列に指定
        return 1
    }
    
    //3.ピッカービューの行数を決定する(選択肢の数)
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //４行に設定(配列から要素数を取得し設定)
        return teaList.count
    }
    
    //4.ピッカービューに表示する文字の設定
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //print(teaList[row])
        return teaList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //(6.)row:選択された項目が何行目か
        print(teaList[row])
    }
    

    @IBOutlet weak var muyPickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //5.指示を出しているのがViewControllerだと知らせる設定が必要
        //ストーリーボード上で設定
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

