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
    let names = [ "Annie", "Pat", "Kostya", "John", "JP"]
    

    @IBAction func coldcallButton(_ sender: UIButton) {
        nameLabel.text = names[Int(arc4random_uniform(UInt32(names.count)))]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

