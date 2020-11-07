//
//  ViewControllerTests.swift
//  ViewControllerTests
//
//  Created by Ricardo Herrera Petit on 10/11/20.
//

import XCTest
@testable import EmblemApp

class ViewControllerTests: XCTestCase {
    
    func makeSUT() -> ViewController {
        let sut = UIStoryboard(name: "Main", bundle: Bundle(for: ViewController.self)).instantiateInitialViewController() as! ViewController
        sut.loadViewIfNeeded()
        return sut
    }

    func testcontrollerhasFighterUIImageView() {
        let sut = makeSUT()
        XCTAssertNotNil(sut.fighterEmblemImageView, "Controller has no emblemImageView")
    }
    
    func testcontrollerhasSupportUIImageView() {
        let sut = makeSUT()
        XCTAssertNotNil(sut.supportEmblemImageView, "Controller has no emblemImageView")
    }
    
    func testcontrollerhasMarksManUIImageView() {
        let sut = makeSUT()
        XCTAssertNotNil(sut.marksmanEmblemImageView, "Controller has no emblemImageView")
    }
    
    
    func testcontrollerFighterUIImageViewHasTheCorrectImageWhichIsEmblem01() {
        
        AssertThatImageWith("emblem01", makeSUT())
        
    }
    
    func testcontrollerSupportUIImageViewHasTheCorrectImageWhichIsEmblem02() {
        AssertThatImageWith("emblem02", makeSUT())
        
    }
    
    fileprivate func AssertThatImageWith(_ filename: String, _ sut: ViewController) {
        sut.createImage(filename)
        
        XCTAssertNotNil(sut.fighterEmblemImageView.image, "UIImageView in Controller doesnt have the image")
        XCTAssertEqual(sut.fighterEmblemImageView.image?.accessibilityIdentifier, filename)
    }
    
    
}
