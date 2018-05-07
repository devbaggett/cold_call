//
//  ViewController.swift
//  Cold Call
//
//  Created by Devin Baggett on 5/7/18.
//  Copyright © 2018 devbaggett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    let names = [ "Annie", "Pat", "Kostya", "John", "JP"]
    
    @IBAction func coldcallButton(_ sender: UIButton) {
        nameLabel.text = names[Int(arc4random_uniform(UInt32(names.count)))]
        numberLabel.text = String(arc4random_uniform(5) + 1)
        if (numberLabel.text == "1" || numberLabel.text == "2") {
            numberLabel.textColor = UIColor.red
        }
        else if (numberLabel.text == "3" || numberLabel.text == "4") {
            numberLabel.textColor = UIColor.orange
        }
        else if (numberLabel.text == "5") {
            numberLabel.textColor = UIColor.green
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        numberLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
