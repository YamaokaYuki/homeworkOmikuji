//
//  ViewController.swift
//  homeworkOmikuji
//
//  Created by 山岡由季 on 2018/01/16.
//  Copyright © 2018年 山岡由季. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var omikuji = ["大吉","吉","中吉","小吉","末吉","凶","大凶"]
    
    @IBOutlet weak var myImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //占うボタンが押された時発動
    @IBAction func tapUranai(_ sender: UIButton) {
        
        //占いの結果をランダムに選ぶための数字を作成
        //例）71(ランダムな数)を７で割った余りー＞１なので、吉を表示
        let r = Int(arc4random())%omikuji.count
        print(omikuji[r])
        
        //TODO:アラートの運勢を表示した上で、画面上に表示
        
        //部品となるアラートを作成
        let alert = UIAlertController(title: "今日の運勢", message: omikuji[r], preferredStyle: .alert)
        
        //アラートにOKボタンを追加
        //handler:OKボタンが押された時に行いたい処理を指定する場所
        //nilをセットすると、何も動作しない
        alert.addAction(UIAlertAction(title: "OK",style: .default, handler: {Aaction in
            print("OK押されました")
            
            if r == 0{
                self.myImageView.image = UIImage(named:"daikichi.png")
                
            }else if r == 1{
                self.myImageView.image = UIImage(named:"kichi.png")
                
            }else if r == 2{
                self.myImageView.image = UIImage(named:"chukichi.png")
                
            }else if r == 3{
                self.myImageView.image = UIImage(named:"shokichi.png")
                
            }else if r == 4{
                self.myImageView.image = UIImage(named:"suekichi.png")
                
            }else if r == 5{
                self.myImageView.image = UIImage(named:"kyou.png")
                
            }else{
                self.myImageView.image = UIImage(named:"daikyou.png")
                
            }
            
        }))
        
        //アラートを表示
        present(alert, animated: true, completion: nil)
    
    //TODO:画像をおみくじの運勢分用意して、OKが押されたら対応する画像を表示
  
    
    

    
    
        
//        myImageView.image = UIImage(named:"daikichi.png")
//
//        myImageView.image = UIImage(named:"kichi.png")
//
//        myImageView.image = UIImage(named:"chukichi.png")
//
//        myImageView.image = UIImage(named:"shokichi.png")
//
//        myImageView.image = UIImage(named:"suekichi.png")
//
//        myImageView.image = UIImage(named:"kyou.png")
//
//        myImageView.image = UIImage(named:"daikyou.png")
        
        
        
        
        //TODO:出来上がったらGithubにコミットプッシュ
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}








