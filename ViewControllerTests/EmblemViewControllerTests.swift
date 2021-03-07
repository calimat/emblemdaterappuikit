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
    
    func test_sut_HasDateLabel() {
        let(sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.dateLabel)
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
        
        assertThat(sut: sut, spyDater: spyDater, recievesMessagesForEmblem: .Fighter, for: sut.fighterEmblemButton, on: .touchUpInside)
    }
    
    func test_userTapsSupporButton_sendsARetrieveMessageOfSupportToEmblemDater() {
        let (sut, spyDater) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        assertThat(sut: sut, spyDater: spyDater, recievesMessagesForEmblem: .Support, for: sut.supportEmblemButton, on: .touchUpInside)
    }
    
    //MARK: - Helpers
    
    func makeSUT() -> (EmblemViewController, EmblemSpyDater) {
        let spyDater = EmblemSpyDater()
        let bundle = Bundle(for: EmblemViewController.self)
        let sut = UIStoryboard(name: "Main", bundle: bundle).instantiateInitialViewController() as! EmblemViewController
        sut.emblemDater = spyDater
        return (sut, spyDater)
    }
    
    private func assertThat(sut: EmblemViewController,spyDater: EmblemSpyDater, recievesMessagesForEmblem emblem: Emblem, for control:UIControl, on action: UIControl.Event) {
        
        XCTAssertTrue(spyDater.messages.isEmpty)
        XCTAssertTrue(spyDater.dates.isEmpty)
        XCTAssertEqual(sut.dateLabel.text, "")
        
        control.sendActions(for: action)
        
        XCTAssertEqual(spyDater.messages, [.retrieve(dateForEmblem: emblem)])
        XCTAssertEqual(spyDater.dates.count, 1)
        XCTAssertNotNil(spyDater.dates[0])
        XCTAssertNotEqual(sut.dateLabel.text, "")
    }
    
    
}
