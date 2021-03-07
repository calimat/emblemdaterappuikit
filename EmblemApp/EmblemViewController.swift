//
//  ViewController.swift
//  EmblemApp
//
//  Created by Ricardo Herrera Petit on 10/11/20.
//

import UIKit
import EmblemDateCalculator

class EmblemViewController: UIViewController {

    @IBOutlet weak var fighterEmblemButton: UIButton!
    
    @IBOutlet weak var supportEmblemButton: UIButton!
    
    @IBOutlet weak var
        marksmanEmblemButton: UIButton!
    
    @IBOutlet weak var tankEmblemButton: UIButton!
    
    @IBOutlet weak var
        jungleEmblemButton: UIButton!
    
    @IBOutlet weak var
        assassinEmblemButton: UIButton!
    
    @IBOutlet weak var mageEmblemUIButton: UIButton!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var emblemDater: Dater!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func requestEmblemDate(_ sender: UIButton) {
        var date = Date()
        let currentDate = Date()
        if sender == fighterEmblemButton {
            date = emblemDater.getNextAvailableDate(for: .Fighter, inCurrentDate: currentDate)
        } else {
            date = emblemDater.getNextAvailableDate(for: .Support, inCurrentDate: currentDate)
        }
        dateLabel.text = "\(date)"
        
    }
}

