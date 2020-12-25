//
//  EmblemSettings.swift
//  EmblemApp
//
//  Created by Ricardo Herrera Petit on 11/28/20.
//

import Foundation
import UIKit


typealias Settings = (String?, UIImageView?, UIImageView?, UIImageView?, UIImageView?, UIImageView?, UIImageView?, UIImageView?) -> ()

//public typealias Settings = (completion: @escaping (_ name:String, _ fighterEmblemImageView:UIImageView?, _ supportEmblemImageView:UIImageView?, _ _marksmanEmblemImageView:UIImageView?, _ tankEmblemImageView:UIImageView?,_ jungleEmblemImageView:UIImageView?, _ assassinEmblemImageView:UIImageView?, _ mageEmblemImageView:UIImageView?) -> Void)

public class EmblemSettings {
    public init() {}
     
    func setupImages(name:String?, fighterEmblemImageView:UIImageView?, supportEmblemImageView:UIImageView?, marksmanEmblemImageView:UIImageView?, tankEmblemImageView:UIImageView?, jungleEmblemImageView:UIImageView?, assassinEmblemImageView:UIImageView?, mageEmblemImageView:UIImageView?) {
        
        let imageviews = [fighterEmblemImageView, supportEmblemImageView, marksmanEmblemImageView, tankEmblemImageView, jungleEmblemImageView, assassinEmblemImageView, mageEmblemImageView]
            var count = 1
        
        for imageview in imageviews {
            imageview?.image = UIImage(named: name! + String(count))
            imageview?.image?.accessibilityIdentifier = name! + String(count)
            count += 1
        }
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        fighterEmblemImageView!.isUserInteractionEnabled = true
        fighterEmblemImageView!.addGestureRecognizer(tapGestureRecognizer)
        supportEmblemImageView!.isUserInteractionEnabled = true
        supportEmblemImageView!.addGestureRecognizer(tapGestureRecognizer2)
    }
  
       
    
    
    /*
    public func setupImages(settings:Settings) {
        let imageviews = [settings.fighterEmblemImageView, settings.supportEmblemImageView, settings.marksmanEmblemImageView, settings.tankEmblemImageView, settings.jungleEmblemImageView, settings.assassinEmblemImageView, settings.mageEmblemImageView]
            var count = 1
    }
  
        for imageview in imageviews {
            imageview?.image = UIImage(named: name + String(count))
            imageview?.image?.accessibilityIdentifier = name + String(count)
            count += 1
        }
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        fighterEmblemImageView.isUserInteractionEnabled = true
        fighterEmblemImageView.addGestureRecognizer(tapGestureRecognizer)
        supportEmblemImageView.isUserInteractionEnabled = true
        supportEmblemImageView.addGestureRecognizer(tapGestureRecognizer2)
        
    }
 */
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        //let tappedImage = tapGestureRecognizer.view as! UIImageView

        // Your action
    }

}

