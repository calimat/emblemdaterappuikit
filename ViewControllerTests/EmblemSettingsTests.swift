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
    
        
        let imageViews = [UIImageView(),UIImageView(),UIImageView(),UIImageView(),UIImageView(),UIImageView(),UIImageView()]
        
        sut.setupImages(filename, imageViews: imageViews  )
        XCTAssertNotNil(imageViews[0].image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(imageViews[0].image?.accessibilityIdentifier, "emblem1")
        XCTAssertNotNil(imageViews[1].image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(imageViews[1].image?.accessibilityIdentifier, "emblem2")
        XCTAssertNotNil(imageViews[2].image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(imageViews[2].image?.accessibilityIdentifier, "emblem3")
        XCTAssertNotNil(imageViews[3].image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(imageViews[3].image?.accessibilityIdentifier, "emblem4")
        XCTAssertNotNil(imageViews[4].image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(imageViews[4].image?.accessibilityIdentifier, "emblem5")
        XCTAssertNotNil(imageViews[5].image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(imageViews[5].image?.accessibilityIdentifier, "emblem6")
        XCTAssertNotNil(imageViews[6].image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(imageViews[6].image?.accessibilityIdentifier, "emblem7")
        
    }
   
}
