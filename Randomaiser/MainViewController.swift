//
//  ViewController.swift
//  Randomaiser
//
//  Created by Олег Лысенко on 25.08.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    @IBOutlet var getRandomNumberBotton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getRandomNumberBotton.layer.cornerRadius = 10
    }

    @IBAction func getRandomNumberButtonTapped() {
        let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumValueLabel.text ?? "") ?? 100
    
        randomValueLabel.text = String(Int.random(in: minimumNumber...maximumNumber))
    }
}

