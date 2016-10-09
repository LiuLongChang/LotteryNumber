//
//  TwoColorBallVC.swift
//  LotteryNumber
//
//  Created by langyue on 16/10/9.
//  Copyright © 2016年 langyue. All rights reserved.
//

import UIKit

class TwoColorBallVC: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.init(red: 249/255, green: 219/255, blue: 127/255, alpha: 1)
        title = "Two Color Ball !"


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
