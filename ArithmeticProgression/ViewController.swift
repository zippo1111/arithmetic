//
//  ViewController.swift
//  ArithmeticProgression
//
//  Created by Magnolia on 06.04.17.
//  Copyright © 2017 Magnolia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalSumResult: UILabel!
    @IBOutlet weak var fromNumberValue: UITextField!
    @IBOutlet weak var toNumberValue: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func countSum(_ sender: Any) {
        if let a = fromNumberValue.text, !a.isEmpty,
        let b = toNumberValue.text, !b.isEmpty {
            let fromA: Int = Int(a)!
            let toB: Int = Int(b)!
            let digitsCounter = (toB - fromA) + 1
            let sum = (fromA + toB) * digitsCounter / 2
            totalSumResult.text = String(sum) + " "
        }
    }
    
}

