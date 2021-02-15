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
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.fighterEmblemButton, "Controller has no fighter emblem button")
    }
    
    func testcontrollerhasSupportUIImageView() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.supportEmblemButton, "Controller has no support emblem button")
    }
    
    func testcontrollerhasMarksManUIImageView() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.marksmanEmblemButton, "Controller has no marksman emblem button")
    }
    
    func testcontrollerhasTankUIImageView() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.tankEmblemButton, "Controller has no tank emblem button")
    }
    
    func testcontrollerhasJungleUIImageView() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.jungleEmblemButton, "Controller has no jungle emblem button")
    }
    
    func testcontrollerhasAssassinUIImageView() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.assassinEmblemImageView, "Controller has no emblemImageView")
    }
    
    func testcontrollerhasMageUIImageView() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.mageEmblemImageView, "Controller has no emblemImageView")
    }
    
    func testImageViews_loadView_AreUserIneractionEnabled() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssert(sut.assassinEmblemImageView.isUserInteractionEnabled)
    }
    
    func testImage_loadView_ViewsHaveOneTapGestureRecognizer() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.assassinEmblemImageView.gestureRecognizers?.count, 1)
        
    }
    
    class EmblemSettingsSpy: Settings {
        var setImageCallCount = 0
        func setupImages(imageViews:[UIImageView?]) {
            setImageCallCount = 1
        }
        
    }
    
//    func testcontrollercallsEmblemSettingsFunctionOnViewDidLoad() {
//        let (sut, settingsSpy) = makeSUT()
//        sut.loadViewIfNeeded()
//        XCTAssertEqual(settingsSpy.setImageCallCount, 1)
//
//    }
//
    //MARK: - Helpers
    
    func makeSUT() -> (EmblemViewController, EmblemSettingsSpy) {
        let settingsSpy = EmblemSettingsSpy()
        let bundle = Bundle(for: EmblemViewController.self)
        let sut = UIStoryboard(name: "Main", bundle: bundle).instantiateInitialViewController() as! EmblemViewController
        sut.emblemSettings = settingsSpy
        return (sut, settingsSpy)
    }
    
    
}
