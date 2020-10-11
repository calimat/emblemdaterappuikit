//
//  ViewControllerTests.swift
//  ViewControllerTests
//
//  Created by Ricardo Herrera Petit on 10/11/20.
//

import XCTest
@testable import EmblemApp

class ViewControllerTests: XCTestCase {

    func testcontrollerhasUIImageView() {
        
        guard  let sut = UIStoryboard(name: "Main", bundle: Bundle(for: ViewController.self)).instantiateInitialViewController() as? ViewController else {
            return XCTFail("Could not instantiate viewcontroller from main")
        }
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.emblemImageView, "Controller has no emblemImageView")
        
    }

}
