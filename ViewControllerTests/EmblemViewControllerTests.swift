//
//  ViewControllerTests.swift
//  ViewControllerTests
//
//  Created by Ricardo Herrera Petit on 10/11/20.
//

import XCTest
import EmblemDateCalculator
@testable import EmblemApp

class EmblemViewControllerTests: XCTestCase {
    
    func testcontrollerhasFighterUIButton() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.fighterEmblemButton, "Controller has no fighter emblem button")
    }
    
    func testcontrollerhasSupportUIButton() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.supportEmblemButton, "Controller has no support emblem button")
    }
    
    func testcontrollerhasMarksManUIButton() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.marksmanEmblemButton, "Controller has no marksman emblem button")
    }
    
    func testcontrollerhasTankUIButton() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.tankEmblemButton, "Controller has no tank emblem button")
    }
    
    func testcontrollerhasJungleUIButton() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.jungleEmblemButton, "Controller has no jungle emblem button")
    }
    
    func testcontrollerhasAssassinUIButton() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.assassinEmblemButton, "Controller has no assassin emblem button")
    }
    
    func testcontrollerhasMageUIButton() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.mageEmblemUIButton, "Controller has no mage emblem button")
    }
    
    class EmblemSpyDater: Dater {
        var messages = [Message]()
        var dates = [Date]()
        
        enum Message: Equatable {
            case retrieve(dateForEmblem: Emblem)
        }
        
        func getNextAvailableDate(for emblem: Emblem, inCurrentDate date: Date) -> Date {
            messages.append(.retrieve(dateForEmblem: emblem))
            dates.append(date)
            return Date()
        }
        
        
    }
    
    func test_init_ItDoesntSendAnyMessagesToEmblemDateCalculator() {
        let (sut, spyDater) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertTrue(spyDater.messages.isEmpty)
    }
    
    func test_userTapsFighterButton_sendsARetrieveMessageToEmblemDater() {
        let (sut, spyDater) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertTrue(spyDater.messages.isEmpty)
        XCTAssertTrue(spyDater.dates.isEmpty)
        
        sut.fighterEmblemButton.sendActions(for: .touchUpInside)
        
        XCTAssertEqual(spyDater.messages, [.retrieve(dateForEmblem: .Fighter)])
        XCTAssertEqual(spyDater.dates.count, 1)
        XCTAssertNotNil(spyDater.dates[0])
    }
    
    //MARK: - Helpers
    
    func makeSUT() -> (EmblemViewController, EmblemSpyDater) {
        let spyDater = EmblemSpyDater()
        let bundle = Bundle(for: EmblemViewController.self)
        let sut = UIStoryboard(name: "Main", bundle: bundle).instantiateInitialViewController() as! EmblemViewController
        sut.emblemDater = spyDater
        return (sut, spyDater)
    }
    
    
}
