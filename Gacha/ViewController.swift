//
//  ViewController.swift
//  Gacha
//
//  Created by Tatsunori Ono on 2015/05/17.
//  Copyright (c) 2015年 Tatsunori Ono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getRandomNumber()  {
            number = Int (arc4random_uniform(10))
             NSLog("発生した乱数’は...%dです",  number)
}

override func  prepareForSegue (segue: UIStoryboardSegue,  sender:  AnyObject?)  {
       //segueのdestation(目的地）
       var resultViewController = segue.destinationViewController as!
            ResultViewController
    
    
          resultViewController.number = self.number
}


}

