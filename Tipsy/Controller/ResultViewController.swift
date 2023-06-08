//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Şevval Kalkavan on 8.06.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultValue: UILabel!
    @IBOutlet weak var explainLabel: UILabel!
    
    var split : String = ""
    var tip : Int = 0
    var result : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        explainLabel.text = "Split between \(split) people, with \(tip)% tip."
        resultValue.text = String(result)

    }
    
    
    @IBAction func recalculatedPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}
