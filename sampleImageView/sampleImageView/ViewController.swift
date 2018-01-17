//
//  ViewController.swift
//  sampleImageView
//
//  Created by 山岡由季 on 2018/01/16.
//  Copyright © 2018年 山岡由季. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //イメージ１表示ボタンが押された時発動
    @IBAction func tapimsge(_ sender: UIButton) {
        //imageViewにsample.pngを表示
        myImageView.image = #imageLiteral(resourceName: "sample.png")
//        myImageView.image = #imageLiteral(resourceName: "sample.png")
    }
    
 
    
    
     //イメージ２表示ボタンが押された時発動
    @IBAction func tapImage2(_ sender: UIButton) {
        //imageViewにsample.pngを表示
        myImageView.image = UIImage(named:"sample2.png")
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

