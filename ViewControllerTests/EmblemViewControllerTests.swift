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
        
        XCTAssertNotNil(sut.mageEmblemButton, "Controller has no mage emblem button")
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
    
    func test_userTapsMarksmanButton_sendsARetrieveMessageOfMarksmanToEmblemDater() {
        let (sut, spyDater) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        assertThat(sut: sut, spyDater: spyDater, recievesMessagesForEmblem: .Marksman, for: sut.marksmanEmblemButton, on: .touchUpInside)
    }
    
    
    func test_userTapsTankButton_sendsARetrieveMessageOfTankToEmblemDater() {
        let (sut, spyDater) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        assertThat(sut: sut, spyDater: spyDater, recievesMessagesForEmblem: .Tank, for: sut.tankEmblemButton, on: .touchUpInside)
    }
    
    func test_userTapsJungleButton_sendsARetrieveMessageOfJungleToEmblemDater() {
        let (sut, spyDater) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        assertThat(sut: sut, spyDater: spyDater, recievesMessagesForEmblem: .Jungle, for: sut.jungleEmblemButton, on: .touchUpInside)
    }
    
    func test_userTapsAssassinButton_sendsARetrieveMessageOfAssassinToEmblemDater() {
        let (sut, spyDater) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        assertThat(sut: sut, spyDater: spyDater, recievesMessagesForEmblem: .Assassin, for: sut.assassinEmblemButton, on: .touchUpInside)
    }
    
    func test_userTapsMageButton_sendsARetrieveMessageOfMageToEmblemDater() {
        let (sut, spyDater) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        assertThat(sut: sut, spyDater: spyDater, recievesMessagesForEmblem: .Mage, for: sut.mageEmblemButton, on: .touchUpInside)
    }
    
    //MARK: - Helpers
    
    func makeSUT() -> (EmblemViewController, EmblemSpyDater) {
        let spyDater = EmblemSpyDater()
        let sut = EmblemUIComposer.emblemComposedWith(emblemDater: spyDater)
        return (sut, spyDater)
    }
    
    private func assertThat(sut: EmblemViewController,spyDater: EmblemSpyDater, recievesMessagesForEmblem emblem: Emblem, for control:UIControl, on action: UIControl.Event, file: StaticString = #file, line: UInt = #line ) {
        
        XCTAssertNotNil(control.actions(forTarget: sut, forControlEvent: action), "The control \(control) does not have an action")
        
        XCTAssertTrue(spyDater.messages.isEmpty)
        XCTAssertTrue(spyDater.dates.isEmpty)
        XCTAssertEqual(sut.dateLabel.text, "")
        
        control.sendActions(for: action)
        
        XCTAssertEqual(spyDater.messages, [.retrieve(dateForEmblem: emblem)], file: file, line: line)
        XCTAssertEqual(spyDater.dates.count, 1)
        XCTAssertNotEqual(sut.dateLabel.text, "")
    }
    
    
}
