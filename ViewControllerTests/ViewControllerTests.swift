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
    
    func testcontrollerhasTankUIImageView() {
        let sut = makeSUT()
        XCTAssertNotNil(sut.tankEmblemImageView, "Controller has no emblemImageView")
    }
    
    func testcontrollerhasJungleUIImageView() {
        let sut = makeSUT()
        XCTAssertNotNil(sut.jungleEmblemImageView, "Controller has no emblemImageView")
    }
    
    func testcontrollerhasAssassinUIImageView() {
        let sut = makeSUT()
        XCTAssertNotNil(sut.assassinEmblemImageView, "Controller has no emblemImageView")
    }
    
    func testcontrollerhasMageUIImageView() {
        let sut = makeSUT()
        XCTAssertNotNil(sut.mageEmblemImageView, "Controller has no emblemImageView")
    }
    
    func testFighterImageviewHasOneTapGestureRecognizer() {
        let sut = makeSUT()
        XCTAssert(sut.fighterEmblemImageView.isUserInteractionEnabled)
        XCTAssertEqual(sut.fighterEmblemImageView.gestureRecognizers?.count, 1)
    }
    
    class EmblemSettingsSpy: EmblemSettings {
        var setImageCallCount = 0
        override func setupImages(_ name: String, fighterEmblemImageView: UIImageView!, supportEmblemImageView: UIImageView!, marksmanEmblemImageView: UIImageView!, tankEmblemImageView: UIImageView!, jungleEmblemImageView: UIImageView!, assassinEmblemImageView: UIImageView!, mageEmblemImageView: UIImageView!) {
            setImageCallCount = 1
        }
        
    }
    
    func testcontrollercallsEmblemSettingsFunctionOnViewDidLoad() {
        let spy = EmblemSettingsSpy()
        let sut = ViewController(emblemSettings: spy)
        sut.viewDidLoad()
        XCTAssertEqual(spy.setImageCallCount, 1)
        
    }
    
    
    
}
