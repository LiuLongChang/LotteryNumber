//
//  ViewController.swift
//  LotteryNumber
//
//  Created by langyue on 16/10/9.
//  Copyright © 2016年 langyue. All rights reserved.
//

import UIKit

let kScreenWidth = UIScreen.main.bounds.size.width;
let kScreenHeight = UIScreen.main.bounds.size.height;

class ViewController: UIViewController {


    var showLabel : UILabel! = nil


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


        makeUI()

    }


    func makeUI(){

        let height = (kScreenWidth-20)*0.618;let width = kScreenWidth-20;
        let label = UILabel();label.backgroundColor = UIColor.init(red: 228/255.0, green: 228/255.0, blue: 228/255.0, alpha: 1);label.textColor=UIColor.white;view.addSubview(label);label.bounds = CGRect.init(x: 0, y: 0, width: width, height: height);label.center = CGPoint.init(x: kScreenWidth/2, y: kScreenHeight/2-height/2);label.font = UIFont.systemFont(ofSize: 15);showLabel = label;showLabel.numberOfLines = 0;
        label.layer.borderWidth = 10;
        label.layer.borderColor = UIColor.black.cgColor


        let btn = UIButton(type:.custom);btn.backgroundColor = UIColor.black;btn.setTitle("Generate Lottery Number", for: .normal)
        btn.addTarget(self, action: #selector(ViewController.generateLotteryNumber), for: .touchUpInside);
        btn.frame = CGRect.init(x: 10, y: kScreenHeight-80, width: kScreenWidth-20, height: 30);view.addSubview(btn)



    }



    func generateLotteryNumber(){

        var n1 = 0;var n2 = 0;var n3 = 0;var n4 = 0;var n5 = 0;var n6 = 0;
        let nArray = NSMutableArray()
        var m = 0;

        var condition0 = false;

        var condition1 = true;

        repeat{

            condition0 = false
            nArray.removeAllObjects()
            n1 = Int(arc4random()%34);n2 = Int(arc4random()%34);n3 = Int(arc4random()%34);
            n4 = Int(arc4random()%34);n5 = Int(arc4random()%34);n6 = Int(arc4random()%34);
            nArray.add(n1);nArray.add(n2);nArray.add(n3);nArray.add(n4);nArray.add(n5);nArray.add(n6);
            m  = Int(arc4random()%17)

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

            condition1 = (m == 0 ? true : false);

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
        n6 = nArray[5] as! Int;


        let n1U = String(format: "%02d",n1);let n2U = String(format: "%02d",n2);let n3U = String(format: "%02d",n3);let n4U = String(format: "%02d",n4);let n5U = String(format: "%02d",n5);let n6U = String(format: "%02d",n6);
        let mU = String(format: "%02d",m)

        let attribute0 = [NSForegroundColorAttributeName: UIColor.red,NSFontAttributeName:UIFont.systemFont(ofSize: 18)]
        let attribute1 = [NSForegroundColorAttributeName: UIColor.blue,NSFontAttributeName:UIFont.systemFont(ofSize: 18)]

        let str0 = NSMutableAttributedString(string: "【Double Color Ball:】\n【RED:\n【\(n1U)】【\(n2U)】【\(n3U)】【\(n4U)】【\(n5U)】【\(n6U)】",attributes: attribute0)
        let str1 = NSMutableAttributedString(string: "\n【BLUE:\n【\(mU)】",attributes: attribute1)

        let comStr = NSMutableAttributedString()
        comStr.append(str0);comStr.append(str1);

        showLabel.attributedText =  comStr

    }




    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

