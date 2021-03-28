//
//  EmblemUIComposer.swift
//  EmblemApp
//
//  Created by Ricardo Herrera Petit on 3/21/21.
//

import UIKit
import EmblemDateCalculator


public class EmblemUIComposer {
    private let emblemDater: Dater!
    public init(emblemDater: Dater) {
        self.emblemDater = emblemDater
    }
    
    func emblemViewController(emblemDater: Dater) -> EmblemViewController {
        let bundle = Bundle(for: EmblemViewController.self)
        let emblemViewController = UIStoryboard(name: "Main", bundle: bundle).instantiateInitialViewController() as! EmblemViewController
        emblemViewController.emblemDater = self.emblemDater
        return emblemViewController
    }
}
