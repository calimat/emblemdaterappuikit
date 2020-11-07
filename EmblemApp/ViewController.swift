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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    func createImageFigther(_ name:String) {
        fighterEmblemImageView.image = UIImage(named: name)
        fighterEmblemImageView.image?.accessibilityIdentifier = name
    }
    
    func createImageSupport(_ name:String) {
        supportEmblemImageView.image = UIImage(named: name)
        supportEmblemImageView.image?.accessibilityIdentifier = name
    }

}

