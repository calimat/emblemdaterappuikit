//
//  ViewControllerTests.swift
//  ViewControllerTests
//
//  Created by Ricardo Herrera Petit on 10/11/20.
//

import XCTest
@testable import EmblemApp

class EmblemViewControllerTests: XCTestCase {
    
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
    
    func testImageViewsHaveOneTapGestureRecognizer() {
        let sut = makeSUT()
        XCTAssert(sut.fighterEmblemImageView.isUserInteractionEnabled)
        XCTAssertEqual(sut.fighterEmblemImageView.gestureRecognizers?.count, 1)
        XCTAssert(sut.supportEmblemImageView.isUserInteractionEnabled)
        XCTAssertEqual(sut.supportEmblemImageView.gestureRecognizers?.count, 1)
        XCTAssert(sut.marksmanEmblemImageView.isUserInteractionEnabled)
        XCTAssertEqual(sut.marksmanEmblemImageView.gestureRecognizers?.count, 1)
        XCTAssert(sut.tankEmblemImageView.isUserInteractionEnabled)
        XCTAssertEqual(sut.tankEmblemImageView.gestureRecognizers?.count, 1)
        XCTAssert(sut.jungleEmblemImageView.isUserInteractionEnabled)
        XCTAssertEqual(sut.jungleEmblemImageView.gestureRecognizers?.count, 1)
        XCTAssert(sut.assassinEmblemImageView.isUserInteractionEnabled)
        XCTAssertEqual(sut.assassinEmblemImageView.gestureRecognizers?.count, 1)
        
    }
    
    class EmblemSettingsSpy: Settings {
        var setImageCallCount = 0
        func setupImages(imageViews:[UIImageView?]) {
            setImageCallCount = 1
        }
        
    }
    
    func testcontrollercallsEmblemSettingsFunctionOnViewDidLoad() {
        let spy = EmblemSettingsSpy()
        let sut = EmblemViewController(emblemSettings: spy)
        sut.viewDidLoad()
        XCTAssertEqual(spy.setImageCallCount, 1)
        
    }
    
    //MARK: - Helpers
    
    func makeSUT() -> EmblemViewController {
        let bundle = Bundle(for: EmblemViewController.self)
        let sut = UIStoryboard(name: "Main", bundle: bundle).instantiateInitialViewController() as! EmblemViewController
        sut.loadViewIfNeeded()
        return sut
    }
    
    
}
