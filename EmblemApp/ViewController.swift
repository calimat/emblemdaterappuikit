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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    func createImage(_ name:String) {
        fighterEmblemImageView.image = UIImage(named: "emblem01")
        fighterEmblemImageView.image?.accessibilityIdentifier = name
    }

}

