//
//  EmblemFileMapperTests.swift
//  EmblemFileMapperTests
//
//  Created by Ricardo Herrera Petit on 1/9/21.
//

import XCTest
import EmblemApp

class EmblemFileMapperTests: XCTestCase {

    func test_map_Emblem1FileNameMapstoFighter() {
        let sut = EmblemMapper()
        
        let emblemName = sut.map("emblem1")
        
        XCTAssertEqual(emblemName, "Fighter")
    }
    
    func test_map_Emblem2FileNameMapstoSupport() {
        let sut = EmblemMapper()
        
        let emblemName = sut.map("emblem2")
        
        XCTAssertEqual(emblemName, "Support")
    }
    
    func test_map_Emblem3FileNameMapstoMarksman() {
        let sut = EmblemMapper()
        
        let emblemName = sut.map("emblem3")
        
        XCTAssertEqual(emblemName, "Marksman")
    }
    
    func test_map_Emblem4FileNameMapstoTank() {
        let sut = EmblemMapper()
        
        let emblemName = sut.map("emblem4")
        
        XCTAssertEqual(emblemName, "Tank")
    }
    
    func test_map_Emblem5FileNameMapstoJungle() {
        let sut = EmblemMapper()
        
        let emblemName = sut.map("emblem5")
        
        XCTAssertEqual(emblemName, "Jungle")
    }
    
    func test_map_Emblem6FileNameMapstoAssasin() {
        let sut = EmblemMapper()
        
        let emblemName = sut.map("emblem6")
        
        XCTAssertEqual(emblemName, "Assassin")
    }
    
    func test_map_Emblem7FileNameMapstoMage() {
        let sut = EmblemMapper()
        
        let emblemName = sut.map("emblem7")
        
        XCTAssertEqual(emblemName, "Mage")
    }
    
    func test_map_AnyOtherFileNameMapstoNil() {
        let sut = EmblemMapper()
        
        let emblemName = sut.map("anyFileName")
        
        XCTAssertNil(emblemName)
    }

}
