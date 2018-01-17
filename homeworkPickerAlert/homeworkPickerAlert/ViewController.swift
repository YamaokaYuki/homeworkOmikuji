//
//  ViewController.swift
//  homeworkPickerAlert
//
//  Created by 山岡由季 on 2018/01/15.
//  Copyright © 2018年 山岡由季. All rights reserved.
//

import UIKit

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
        
        //部品となるアラートを作成
        let alert = UIAlertController(title: "紅茶選択", message:  "\(teaList[row])飲みたい？", preferredStyle: .alert)
        
        //アラートにOKボタンを追加
        //handler:OKボタンが押された時に行いたい処理を指定する場所
        //nilをセットすると、何も動作しない
        alert.addAction(UIAlertAction(title: "OK",style: .default, handler: {Aaction in
            print("OK押されました")
            
        }))
        
        //アラートを表示
        present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var myPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




