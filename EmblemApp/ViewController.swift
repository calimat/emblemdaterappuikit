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
        let imageviews = [fighterEmblemImageView]
        var count = 1
        for imageview in imageviews {
            imageview?.image = UIImage(named: name + String(count))
            imageview?.image?.accessibilityIdentifier = name + String(count)
            count += 1
        }
    }
    
    func createImageSupport(_ name:String) {
        supportEmblemImageView.image = UIImage(named: name)
        supportEmblemImageView.image?.accessibilityIdentifier = name
    }
    
    func createImageMarksman(_ name:String) {
        marksmanEmblemImageView.image = UIImage(named: name)
        marksmanEmblemImageView.image?.accessibilityIdentifier = name
    }

}

