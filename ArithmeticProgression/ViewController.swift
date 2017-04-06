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
            
            let sumOfPrimeNumbers = (fromA...toB).map { $0 }.filter { isPrime($0) }.reduce(0, +)
            
            totalSumResult.text = String(sumOfPrimeNumbers)
            
            self.view.endEditing(true) // Убрать клавиатуру
        }
    }
    
    // "Протестированная формула вычисления простых чисел" (диапазон от 2 до number)
    func isPrime(_ number: Int) -> Bool {
        return number > 1 && !(2..<number).contains { number % $0 == 0 }
    }
    
}

