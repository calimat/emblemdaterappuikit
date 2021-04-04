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
        let (sut, _, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.fighterEmblemButton, "Controller has no fighter emblem button")
    }
    
    func testcontrollerhasSupportUIButton() {
        let (sut, _, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.supportEmblemButton, "Controller has no support emblem button")
    }
    
    func testcontrollerhasMarksManUIButton() {
        let (sut, _, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.marksmanEmblemButton, "Controller has no marksman emblem button")
    }
    
    func testcontrollerhasTankUIButton() {
        let (sut, _, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.tankEmblemButton, "Controller has no tank emblem button")
    }
    
    func testcontrollerhasJungleUIButton() {
        let (sut, _, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.jungleEmblemButton, "Controller has no jungle emblem button")
    }
    
    func testcontrollerhasAssassinUIButton() {
        let (sut, _, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.assassinEmblemButton, "Controller has no assassin emblem button")
    }
    
    func testcontrollerhasMageUIButton() {
        let (sut, _, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.mageEmblemButton, "Controller has no mage emblem button")
    }
    
    func test_sut_HasDateLabel() {
        let(sut, _, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.dateLabel)
    }
  
    func test_init_ItDoesntSendAnyMessagesToEmblemDateCalculator() {
        let (sut, spyDater, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertTrue(spyDater.messages.isEmpty)
    }
    
    func test_init_EmblemViewControllerHasEmblemFormatter() {
        let (sut, _, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.emblemDateFormatter)
    }
    
    func test_userTapsFighterButton_sendsARetrieveMessageToEmblemDater() {
        let (sut, spyDater, spyFormatter) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        assertThat(sut: sut, spyDater: spyDater, recievesMessagesForEmblem: .Fighter, for: sut.fighterEmblemButton, on: .touchUpInside, formatter: spyFormatter )
    }
    
    func test_userTapsSupporButton_sendsARetrieveMessageOfSupportToEmblemDater() {
        let (sut, spyDater, spyFormatter) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        assertThat(sut: sut, spyDater: spyDater, recievesMessagesForEmblem: .Support, for: sut.supportEmblemButton, on: .touchUpInside, formatter: spyFormatter)
    }
    
    func test_userTapsMarksmanButton_sendsARetrieveMessageOfMarksmanToEmblemDater() {
        let (sut, spyDater, spyFormatter) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        assertThat(sut: sut, spyDater: spyDater, recievesMessagesForEmblem: .Marksman, for: sut.marksmanEmblemButton, on: .touchUpInside, formatter: spyFormatter)
    }
    
    
    func test_userTapsTankButton_sendsARetrieveMessageOfTankToEmblemDater() {
        let (sut, spyDater, spyFormatter) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        assertThat(sut: sut, spyDater: spyDater, recievesMessagesForEmblem: .Tank, for: sut.tankEmblemButton, on: .touchUpInside, formatter: spyFormatter)
    }
    
    func test_userTapsJungleButton_sendsARetrieveMessageOfJungleToEmblemDater() {
        let (sut, spyDater, spyFormatter) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        assertThat(sut: sut, spyDater: spyDater, recievesMessagesForEmblem: .Jungle, for: sut.jungleEmblemButton, on: .touchUpInside, formatter: spyFormatter)
    }
    
    func test_userTapsAssassinButton_sendsARetrieveMessageOfAssassinToEmblemDater() {
        let (sut, spyDater, spyFormatter) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        assertThat(sut: sut, spyDater: spyDater, recievesMessagesForEmblem: .Assassin, for: sut.assassinEmblemButton, on: .touchUpInside, formatter: spyFormatter)
    }
    
    func test_userTapsMageButton_sendsARetrieveMessageOfMageToEmblemDater() {
        let (sut, spyDater, spyFormatter) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        assertThat(sut: sut, spyDater: spyDater, recievesMessagesForEmblem: .Mage, for: sut.mageEmblemButton, on: .touchUpInside, formatter: spyFormatter)
    }
    
    //MARK: - Helpers
    
    func makeSUT() -> (EmblemViewController, EmblemSpyDater, EmblemSpyDateFormatter) {
        let spyDater = EmblemSpyDater()
        let spyFormatter = EmblemSpyDateFormatter()
        let sut = EmblemUIComposer.emblemComposedWith(emblemDater: spyDater, emblemDateFormatter: spyFormatter)
        return (sut, spyDater, spyFormatter)
    }
    
    private func assertThat(sut: EmblemViewController,spyDater: EmblemSpyDater, recievesMessagesForEmblem emblem: Emblem, for control:UIControl, on action: UIControl.Event, formatter: EmblemSpyDateFormatter, file: StaticString = #file, line: UInt = #line ) {
        
        XCTAssertNotNil(control.actions(forTarget: sut, forControlEvent: action), "The control \(control) does not have an action")
        
        XCTAssertTrue(spyDater.messages.isEmpty)
        XCTAssertTrue(spyDater.dates.isEmpty)
        XCTAssertEqual(sut.dateLabel.text, "")
        XCTAssertTrue(formatter.messages.isEmpty)
        
        control.sendActions(for: action)
        
        XCTAssertEqual(spyDater.messages, [.retrieve(dateForEmblem: emblem)], file: file, line: line)
        XCTAssertEqual(spyDater.dates.count, 1)
        XCTAssertEqual(formatter.messages.count, 1)
        XCTAssertNotEqual(sut.dateLabel.text, "")
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
    
    class EmblemSpyDateFormatter: EmblemFormatter {
        var messages = [Message]()
        
        enum Message: Equatable {
            case fromatted(forDate: Date)
        }
        
        func getFriendlyDate(_ date: Date) -> String {
            messages.append(.fromatted(forDate: date))
            return "any other string format"
        }
    }
    
}
