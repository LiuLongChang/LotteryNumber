//
//  LotteryTypeVC.swift
//  LotteryNumber
//
//  Created by langyue on 16/10/9.
//  Copyright © 2016年 langyue. All rights reserved.
//

import UIKit

class LotteryTypeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Hello World !"
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.red
        navigationController?.navigationBar.barTintColor = UIColor.init(red: 249/255, green: 219/255, blue: 127/255, alpha: 1)


        let btnM1 = UIButton.init(type: .custom)
        btnM1.setTitle("Number 3D !", for: .normal)
        btnM1.addTarget(self, action: #selector(LotteryTypeVC.typeBtnAction(btn:)), for: .touchUpInside)
        btnM1.frame = CGRect.init(x: kScreenWidth/2-150, y: kScreenHeight/2-150, width: 300, height: 50)
        view.addSubview(btnM1);btnM1.tag = 99;
        btnM1.backgroundColor = UIColor.black
        btnM1.setTitleColor(UIColor.yellow, for: .normal)
        btnM1.layer.cornerRadius = 5
        btnM1.layer.borderWidth = 5
        btnM1.layer.borderColor = UIColor.white.cgColor



        let btn0 = UIButton.init(type: .custom)
        btn0.setTitle("Two Color Ball !", for: .normal)
        btn0.addTarget(self, action: #selector(LotteryTypeVC.typeBtnAction(btn:)), for: .touchUpInside)
        btn0.frame = CGRect.init(x: kScreenWidth/2-150, y: kScreenHeight/2-50, width: 300, height: 50)
        view.addSubview(btn0);btn0.tag = 100;
        btn0.backgroundColor = UIColor.black
        btn0.setTitleColor(UIColor.yellow, for: .normal)
        btn0.layer.cornerRadius = 5
        btn0.layer.borderWidth = 5
        btn0.layer.borderColor = UIColor.purple.cgColor


        let btn1 = UIButton.init(type: .custom)
        btn1.setTitle("Big Happiness Throughout !", for: .normal)
        btn1.addTarget(self, action: #selector(LotteryTypeVC.typeBtnAction(btn:)), for: .touchUpInside)
        btn1.frame = CGRect.init(x: kScreenWidth/2-150, y: kScreenHeight/2+50, width: 300, height: 50)
        view.addSubview(btn1);btn1.tag = 101;
        btn1.backgroundColor = UIColor.black
        btn1.setTitleColor(UIColor.red, for: .normal)
        btn1.layer.cornerRadius = 5
        btn1.layer.borderWidth = 5
        btn1.layer.borderColor = UIColor.yellow.cgColor


        let btn2 = UIButton.init(type: .custom)
        btn2.setTitle("Six Yao.", for: .normal)
        btn2.addTarget(self, action: #selector(LotteryTypeVC.typeBtnAction(btn:)), for: .touchUpInside)
        btn2.frame = CGRect.init(x: kScreenWidth/2-150, y: kScreenHeight/2+50+100, width: 300, height: 50)
        view.addSubview(btn2);btn2.tag = 102;
        btn2.setTitleColor(UIColor.white, for: .normal)
        btn2.layer.cornerRadius = 5
        btn2.layer.borderWidth = 5
        btn2.layer.borderColor = UIColor.blue.cgColor

    }



    func typeBtnAction(btn:UIButton){

        if btn.tag == 99 {
            let vc = Number3DVC()
            navigationController?.pushViewController(vc, animated: true)
        }

        if btn.tag == 100 {
            NSLog("Two Color Ball")
            let vc = TwoColorBallVC()
            navigationController?.pushViewController(vc, animated: true)
        }

        if btn.tag == 101 {
            NSLog("Big Happiness Throughout!")
            let vc = LargeHappyIntOutVC()
            navigationController?.pushViewController(vc, animated: true)
        }

        if btn.tag == 102 {



            let yao0 = arc4random()%2
            let yao1 = arc4random()%2
            let yao2 = arc4random()%2
            let yao3 = arc4random()%2
            let yao4 = arc4random()%2
            let yao5 = arc4random()%2

            var str0 = "";var str1 = "";var str2 = "";var str3 = "";var str4 = "";var str5 = "";
            var strU = "";

            if yao0 == 0 {
                str0 = " ◎ "
            }else{
                str0 = " ◉ "
            }

            if yao1 == 0 {
                str1 = " ◎ "
            }else{
                str1 = " ◉ "
            }

            if yao2 == 0 {
                str2 = " ◎ "
            }else{
                str2 = " ◉ "
            }

            if yao3 == 0 {
                str3 = " ◎ "
            }else{
                str3 = " ◉ "
            }

            if yao4 == 0 {
                str4 = " ◎ "
            }else{
                str4 = " ◉ "
            }

            if yao5 == 0 {
                str5 = " ◎ "
            }else{
                str5 = " ◉ "
            }


            strU.append(str0);strU.append(str1);strU.append(str2);strU.append(str3);strU.append(str4);strU.append(str5);
            btn.setTitle(strU, for: .normal)

        }


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
