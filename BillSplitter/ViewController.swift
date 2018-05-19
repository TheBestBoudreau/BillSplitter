//
//  ViewController.swift
//  BillSplitter
//
//  Created by Tyler Boudreau on 2018-05-18.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
@IBOutlet weak var billSum: UITextField!
    @IBOutlet weak var numberOfPeople: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var splitAmountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func calculateSplit(_ sender: Any) {
        let amount = Float(billSum.text!)
        let peopleQuant = numberOfPeople.value
        splitAmountLabel.text = "\(amount!/peopleQuant) each"
    }
    
    @IBAction func sliderValue(_ sender: UISlider) {
        let peopleQuant = Int(sender.value)
        
        sliderLabel.text = "Number of people: \(String(describing: peopleQuant))"
        
    }
    
}

