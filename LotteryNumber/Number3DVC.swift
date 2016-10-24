//
//  Number3DVC.swift
//  LotteryNumber
//
//  Created by langyue on 16/10/24.
//  Copyright © 2016年 langyue. All rights reserved.
//

import UIKit

class Number3DVC: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title =  "Number Of 3D!"

        self.view.backgroundColor = UIColor.purple

        // Do any additional setup after loading the view.
    }


    override func generateLotteryNumber() {


        let n1 = arc4random()%10
        let n2 = arc4random()%10
        let n3 = arc4random()%10


        showLabel.textColor = UIColor.black
        showLabel.text =  "==== \(n1)  ===  \(n2)  ===  \(n3)"
        


        
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
