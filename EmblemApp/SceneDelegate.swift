//
//  SceneDelegate.swift
//  EmblemApp
//
//  Created by Ricardo Herrera Petit on 10/11/20.
//

import UIKit
import EmblemDateCalculator

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        configureWindow()
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func configureWindow() {
        let emblemViewController = EmblemUIComposer.emblemComposedWith(emblemDater: EmblemDater())
        window?.rootViewController = emblemViewController
    }


}

