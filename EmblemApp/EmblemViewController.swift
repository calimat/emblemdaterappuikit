//
//  ViewController.swift
//  EmblemApp
//
//  Created by Ricardo Herrera Petit on 10/11/20.
//

import UIKit
import EmblemDateCalculator

public class EmblemViewController: UIViewController {

    @IBOutlet weak var fighterEmblemButton: UIButton!
    
    @IBOutlet weak var supportEmblemButton: UIButton!
    
    @IBOutlet weak var
        marksmanEmblemButton: UIButton!
    
    @IBOutlet weak var tankEmblemButton: UIButton!
    
    @IBOutlet weak var
        jungleEmblemButton: UIButton!
    
    @IBOutlet weak var
        assassinEmblemButton: UIButton!
    
    @IBOutlet weak var mageEmblemButton: UIButton!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var emblemDater: Dater!
    
    var emblemDateFormatter: EmblemFormatter!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.dateLabel.text = ""
    }

    
    @IBAction func requestEmblemDate(_ sender: UIButton) {
        var date = Date()
        let currentDate = Date()
        var emblem: Emblem = .Fighter
        
        switch sender {
        case fighterEmblemButton:
            emblem = .Fighter
        case supportEmblemButton:
            emblem = .Support
        case marksmanEmblemButton:
            emblem = .Marksman
        case tankEmblemButton:
            emblem = .Tank
        case jungleEmblemButton:
            emblem = .Jungle
        case assassinEmblemButton:
            emblem = .Assassin
        case mageEmblemButton:
            emblem = .Mage
        default:
            emblem = .Fighter
        }
        
        date = emblemDater.getNextAvailableDate(for: emblem, inCurrentDate: currentDate)
        let friendlyDate = emblemDateFormatter.getFriendlyDate(date)
        dateLabel.text = friendlyDate
        
    }
}

