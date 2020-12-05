//
//  ViewController.swift
//  EmblemApp
//
//  Created by Ricardo Herrera Petit on 10/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fighterEmblemImageView:UIImageView!
    
    @IBOutlet weak var supportEmblemImageView:UIImageView!
    
    @IBOutlet weak var
        marksmanEmblemImageView:UIImageView!
    
    @IBOutlet weak var tankEmblemImageView:UIImageView!
    
    @IBOutlet weak var
        jungleEmblemImageView:UIImageView!
    
    @IBOutlet weak var
        assassinEmblemImageView:UIImageView!
    
    @IBOutlet weak var mageEmblemImageView:UIImageView!
    
    var emblemSettings:EmblemSettings = EmblemSettings()
    
    convenience init(emblemSettings:EmblemSettings) {
        self.init()
        self.emblemSettings = emblemSettings
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emblemSettings.setupImages("emblem", fighterEmblemImageView: fighterEmblemImageView, supportEmblemImageView: supportEmblemImageView, marksmanEmblemImageView: marksmanEmblemImageView, tankEmblemImageView: tankEmblemImageView, jungleEmblemImageView: jungleEmblemImageView, assassinEmblemImageView: assassinEmblemImageView, mageEmblemImageView: mageEmblemImageView)
        // Do any additional setup after loading the view.
    }

    
}

