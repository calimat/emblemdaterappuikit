//
//  ViewController.swift
//  EmblemApp
//
//  Created by Ricardo Herrera Petit on 10/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emblemImageView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emblemImageView.image = UIImage(named: "emblem01")
        // Do any additional setup after loading the view.
    }


}

