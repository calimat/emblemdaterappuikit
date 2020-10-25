//
//  ViewControllerTests.swift
//  ViewControllerTests
//
//  Created by Ricardo Herrera Petit on 10/11/20.
//

import XCTest
@testable import EmblemApp

class ViewControllerTests: XCTestCase {

    func testcontrollerhasFighterUIImageView() {
        
        guard  let sut = UIStoryboard(name: "Main", bundle: Bundle(for: ViewController.self)).instantiateInitialViewController() as? ViewController else {
            return XCTFail("Could not instantiate viewcontroller from main")
        }
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.fighterEmblemImageView, "Controller has no emblemImageView")
        
    }
    
    func testcontrollerFighterUIImageViewHasTheCorrectImageWhichIsEmblem01() {
        
        guard  let sut = UIStoryboard(name: "Main", bundle: Bundle(for: ViewController.self)).instantiateInitialViewController() as? ViewController else {
            return XCTFail("Could not instantiate viewcontroller from main")
        }
        
        sut.loadViewIfNeeded()
        sut.createImage("emblem01")
        
        XCTAssertNotNil(sut.fighterEmblemImageView.image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(sut.fighterEmblemImageView.image?.accessibilityIdentifier, "emblem01")
        
    }

}
