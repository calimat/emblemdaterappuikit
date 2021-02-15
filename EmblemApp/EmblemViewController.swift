//
//  ViewController.swift
//  EmblemApp
//
//  Created by Ricardo Herrera Petit on 10/11/20.
//

import UIKit

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
    
    var emblemSettings:Settings = EmblemSettings()
    
    convenience init(emblemSettings:Settings) {
        self.init()
        self.emblemSettings = emblemSettings
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
}

