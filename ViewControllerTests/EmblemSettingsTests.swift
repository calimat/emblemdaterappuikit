//
//  EmblemSettingsTests.swift
//  ViewControllerTests
//
//  Created by Ricardo Herrera Petit on 12/5/20.
//

import XCTest
import EmblemApp

class EmblemSettingsTests: XCTestCase {

    
    func testcontrollerFighterUIImageViewHasTheCorrectImageWhichIsEmblem01() {
        
        let filename = "emblem"
        let sut = EmblemSettings()
        
        let fighterEmblemImageView = UIImageView()
        let supportEmblemImageView = UIImageView()
        let marksmanEmblemImageView = UIImageView()
        let tankEmblemImageView = UIImageView()
        let jungleEmblemImageView = UIImageView()
        let assassinEmblemImageView = UIImageView()
        let mageEmblemImageView = UIImageView()
        
        sut.setupImages(filename, fighterEmblemImageView: fighterEmblemImageView, supportEmblemImageView: supportEmblemImageView, marksmanEmblemImageView: marksmanEmblemImageView, tankEmblemImageView: tankEmblemImageView,jungleEmblemImageView: jungleEmblemImageView, assassinEmblemImageView: assassinEmblemImageView, mageEmblemImageView: mageEmblemImageView   )
        XCTAssertNotNil(fighterEmblemImageView.image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(fighterEmblemImageView.image?.accessibilityIdentifier, "emblem1")
        XCTAssertNotNil(supportEmblemImageView.image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(supportEmblemImageView.image?.accessibilityIdentifier, "emblem2")
        XCTAssertNotNil(marksmanEmblemImageView.image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(marksmanEmblemImageView.image?.accessibilityIdentifier, "emblem3")
        XCTAssertNotNil(tankEmblemImageView.image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(tankEmblemImageView.image?.accessibilityIdentifier, "emblem4")
        XCTAssertNotNil(jungleEmblemImageView.image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(jungleEmblemImageView.image?.accessibilityIdentifier, "emblem5")
        XCTAssertNotNil(assassinEmblemImageView.image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(assassinEmblemImageView.image?.accessibilityIdentifier, "emblem6")
        XCTAssertNotNil(mageEmblemImageView.image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(mageEmblemImageView.image?.accessibilityIdentifier, "emblem7")
        
    }
   
}
