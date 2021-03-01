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
        if sender == fighterEmblemButton {
            let date = emblemDater.getNextAvailableDate(for: .Fighter, inCurrentDate: Date())
            dateLabel.text = "\(date)"
        } else {
            let date = emblemDater.getNextAvailableDate(for: .Support, inCurrentDate: Date())
            dateLabel.text = "\(date)"
        }
        
    }
}

