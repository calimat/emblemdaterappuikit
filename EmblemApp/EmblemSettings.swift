//
//  EmblemSettings.swift
//  EmblemApp
//
//  Created by Ricardo Herrera Petit on 11/28/20.
//

import Foundation
import UIKit

public class EmblemSettings {
    public init() {}
    public func setupImages(_ name:String, fighterEmblemImageView:UIImageView!, supportEmblemImageView:UIImageView!, marksmanEmblemImageView:UIImageView!, tankEmblemImageView:UIImageView!, jungleEmblemImageView:UIImageView!, assassinEmblemImageView:UIImageView!, mageEmblemImageView:UIImageView! ) {
        let imageviews = [fighterEmblemImageView, supportEmblemImageView, marksmanEmblemImageView, tankEmblemImageView, jungleEmblemImageView, assassinEmblemImageView, mageEmblemImageView]
        var count = 1
        for imageview in imageviews {
            imageview?.image = UIImage(named: name + String(count))
            imageview?.image?.accessibilityIdentifier = name + String(count)
            count += 1
        }
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        fighterEmblemImageView.isUserInteractionEnabled = true
        fighterEmblemImageView.addGestureRecognizer(tapGestureRecognizer)
        supportEmblemImageView.isUserInteractionEnabled = true 
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        //let tappedImage = tapGestureRecognizer.view as! UIImageView

        // Your action
    }
}
