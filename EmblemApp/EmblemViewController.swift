//
//  ViewController.swift
//  EmblemApp
//
//  Created by Ricardo Herrera Petit on 10/11/20.
//

import UIKit

class EmblemViewController: UIViewController {

    @IBOutlet weak var fighterEmblemButton:UIButton!
    
    @IBOutlet weak var supportEmblemButton:UIButton!
    
    @IBOutlet weak var
        marksmanEmblemButton:UIButton!
    
    @IBOutlet weak var tankEmblemImageView:UIImageView!
    
    @IBOutlet weak var
        jungleEmblemImageView:UIImageView!
    
    @IBOutlet weak var
        assassinEmblemImageView:UIImageView!
    
    @IBOutlet weak var mageEmblemImageView:UIImageView!
    
    var emblemSettings:Settings = EmblemSettings()
    
    convenience init(emblemSettings:Settings) {
        self.init()
        self.emblemSettings = emblemSettings
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let imageViews = [fighterEmblemImageView, supportEmblemImageView, marksmanEmblemImageView, tankEmblemImageView, jungleEmblemImageView, assassinEmblemImageView, mageEmblemImageView]
       // self.emblemSettings.setupImages(imageViews: imageViews)
        // Do any additional setup after loading the view.
    }

    
}

