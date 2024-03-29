//
//  EmblemUIComposer.swift
//  EmblemApp
//
//  Created by Ricardo Herrera Petit on 3/21/21.
//

import UIKit
import EmblemDateCalculator


public class EmblemUIComposer {
    public init() {}
    
    public static func emblemComposedWith(emblemDater: Dater, emblemDateFormatter: EmblemFormatter) -> EmblemViewController {
       return  makeEmblemViewController(emblemDater: emblemDater, emblemDateFormatter: emblemDateFormatter)
    }
    
    private static func makeEmblemViewController(emblemDater: Dater, emblemDateFormatter: EmblemFormatter) -> EmblemViewController {
        let bundle = Bundle(for: EmblemViewController.self)
        let emblemViewController = UIStoryboard(name: "Main", bundle: bundle).instantiateInitialViewController() as! EmblemViewController
        emblemViewController.emblemDater = emblemDater
        emblemViewController.emblemDateFormatter = emblemDateFormatter
        return emblemViewController
    }
}
