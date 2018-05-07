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
    let names = [ "Annie", "Pat", "Kostya"]
    var currentName = 0
    @IBAction func coldcallButton(_ sender: UIButton) {
        updateUI()
        if (currentName < names.count - 1) {
            currentName += 1
        }
        else {
            currentName = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateUI() {
        nameLabel.text = names[currentName]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

