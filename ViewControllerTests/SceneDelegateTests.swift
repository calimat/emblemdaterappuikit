//
//  SceneDelegateTests.swift
//  ViewControllerTests
//
//  Created by Ricardo Herrera Petit on 3/21/21.
//

import XCTest
@testable import EmblemApp

class SceneDelegateTests: XCTestCase {
    
    func test_configureWindow_CongiuresEmblemViewController() {
        let sut = SceneDelegate()
        sut.window = UIWindow()
        sut.configureWindow()
        XCTAssertTrue(sut.window?.rootViewController is EmblemViewController, "Expected rootViewController to be of EmblemViewController" )
    }
}
