//
//  ViewController.swift
//  TaskApp
//
//  Created by Kuppireddy, Sravanthi  on 12/6/18.
//  Copyright © 2018 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_task2Results: UILabel!
    @IBOutlet weak var lbl_task1results: UILabel!
    @IBOutlet weak var tfd_amount: UITextField!
    @IBOutlet weak var tfd_palindromenumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // Algorithm
    // step 1: need to loop a given number for its next palindrome number
    // step 2 : need to find a reverse number
    // step 3 : check whether reverse number is equal to a given number (number == reverseNumer)
    // step 4 :  if number == reverseNumer) increment number to +1 to find next palindrome number
    // step 5: find reverse number again
    // step 6 : check whether reverse number is equal to a given number (number == reverseNumer) it gives next palindrome of a given number
    
    
    @IBAction func findNextPalindromeNumber(_ sender: Any) {
        
        guard let text = tfd_palindromenumber.text, !text.isEmpty else {
            return
        }
        var flag = 0
        
        var number :Int = Int(text) ?? 0
        // incrementing number with +1 if we enter a palindrome number
        number += 1
        
        while flag != 1  {
            var reverseNumber = 0
            var rem = 0
            var num = number
            while num != 0 {
                rem = num%10
                reverseNumber = reverseNumber * 10 + rem
                num /= 10
            }
            if reverseNumber == number
            {
                flag = 1
                //print("next palindrome is :\(reverseNumber)")
                self.lbl_task1results.text = "next palindrome is : \(reverseNumber)"
                break
            }
            number += 1
        }
        
        
        
    }
    
    @IBAction func convert(_ sender: Any) {
        guard let text = tfd_amount.text, !text.isEmpty else {
            return
        }
        var amount : Double = Double(text) ?? 0.0
        amount *= 70.73
        self.lbl_task2Results.text = "INR: \(amount)"
    }
}


