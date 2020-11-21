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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    func setupImages(_ name:String) {
        let imageviews = [fighterEmblemImageView, supportEmblemImageView, marksmanEmblemImageView, tankEmblemImageView, jungleEmblemImageView, assassinEmblemImageView, mageEmblemImageView]
        var count = 1
        for imageview in imageviews {
            imageview?.image = UIImage(named: name + String(count))
            imageview?.image?.accessibilityIdentifier = name + String(count)
            count += 1
        }
    }
    
}

