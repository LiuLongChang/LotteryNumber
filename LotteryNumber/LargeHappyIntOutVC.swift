//
//  LargeHappyIntOutVC.swift
//  LotteryNumber
//
//  Created by langyue on 16/10/9.
//  Copyright © 2016年 langyue. All rights reserved.
//

import UIKit

class LargeHappyIntOutVC: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 208/255.0, green: 213/255.0, blue: 217/255.0, alpha: 1)
        // Do any additional setup after loading the view.
        title = "Big Happiness InOut !"


        
    }


    override func generateLotteryNumber(){

        var n1 = 0;var n2 = 0;var n3 = 0;var n4 = 0;var n5 = 0;
        let nArray = NSMutableArray()
        var m0 = 0;
        var m1 = 0;

        var condition0 = false;

        var condition1 = true;

        repeat{

            condition0 = false
            nArray.removeAllObjects()
            n1 = Int(arc4random()%36);n2 = Int(arc4random()%36);n3 = Int(arc4random()%36);
            n4 = Int(arc4random()%36);n5 = Int(arc4random()%36);
            nArray.add(n1);nArray.add(n2);nArray.add(n3);nArray.add(n4);nArray.add(n5);
            m0  = Int(arc4random()%13)
            m1 = Int(arc4random()%13)

            for i in 0..<nArray.count {

                let left : Int = nArray[i] as! Int
                if left == 0 {
                    condition0 = true;break;
                }
                for j in (i+1)..<(nArray.count){
                    let right : Int = nArray[j] as! Int
                    if left == right {
                        condition0 = true;break;
                    }
                }

            }

            condition1 = (m0 == 0) || (m1 == 0) || (m0 == m1);


        }while (condition0 || condition1)





        for i in 0..<nArray.count{
            for j in (i+1)..<nArray.count{
                let a = nArray[i] as! Int
                let b = nArray[j] as! Int

                if a > b {
                    nArray.replaceObject(at: i, with: b)
                    nArray.replaceObject(at: j, with: a)
                }

            }
        }


        n1 = nArray[0] as! Int;n2 = nArray[1] as! Int;n3 = nArray[2] as! Int;n4 = nArray[3] as! Int;n5 = nArray[4] as! Int;


        let n1U = String(format: "%02d",n1);let n2U = String(format: "%02d",n2);let n3U = String(format: "%02d",n3);let n4U = String(format: "%02d",n4);let n5U = String(format: "%02d",n5);

        var m0U : String = ""
        var m1U : String = ""
        if m0 > m1 {
            m0U = String(format: "%02d",m1)
            m1U = String(format: "%02d",m0)
        }else{
            m0U = String(format: "%02d",m0)
            m1U = String(format: "%02d",m1)
        }




        let attribute0 = [NSForegroundColorAttributeName: UIColor.red,NSFontAttributeName:UIFont.systemFont(ofSize: 18)]
        let attribute1 = [NSForegroundColorAttributeName: UIColor.blue,NSFontAttributeName:UIFont.systemFont(ofSize: 18)]

        let str0 = NSMutableAttributedString(string: "【Large Happiness InOut:】\n【Front Zrea:\n【\(n1U)】【\(n2U)】【\(n3U)】【\(n4U)】【\(n5U)】",attributes: attribute0)
        let str1 = NSMutableAttributedString(string: "\n【Rear Area:\n【\(m0U)】 【\(m1U)】",attributes: attribute1)
        
        let comStr = NSMutableAttributedString()
        comStr.append(str0);comStr.append(str1);
        
        showLabel.attributedText =  comStr
        
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
