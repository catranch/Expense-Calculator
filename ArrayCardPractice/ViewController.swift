//
//  ViewController.swift
//  ArrayCardPractice
//
//  Created by Celena Haase on 3/22/16.
//  Copyright © 2016 Celena Haase. All rights reserved.
//

import UIKit

struct Business {
    let name: String
}

struct BizBill {
    let restaurant: Business
    var totalBill: Double
    
}

let ralphs = Business(name:"Starter")
let billR = BizBill(restaurant: ralphs, totalBill: 0.0)

var bizBills = [billR]



class ViewController: UIViewController {

    @IBOutlet weak var taskInputFromUser: UITextField!
    //put a variable here
    @IBOutlet weak var taskAmountFromUser: UITextField!
    
    @IBOutlet weak var totalOwedRoomie: UILabel!
    
    @IBAction func submit(sender: UIButton) {
        
        let userInput = Business(name:taskInputFromUser.text!)
       
        let userAmountSpent = Double(taskAmountFromUser.text!)
        
        let billNext = BizBill(restaurant: userInput, totalBill:userAmountSpent!)
       
        bizBills.append(billNext)
        
        var grandTotal = 0.0 // sets to Double
       
        for bill in bizBills{
            print(bill.restaurant.name)
            print(bill.totalBill)
       
            grandTotal = grandTotal + bill.totalBill
        }
    
        print("Grand Total")
        print(grandTotal)
        self.totalOwedRoomie.text = String(grandTotal)
        self.taskInputFromUser.text = ""
        self.taskAmountFromUser.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        print("Greg Heo Strut Part6")
        //var taskInputFromUser
        
        //put bizbills.append(bill3) down here? after
    }

}

