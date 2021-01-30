//
//  EmblemFileMapperTests.swift
//  EmblemFileMapperTests
//
//  Created by Ricardo Herrera Petit on 1/9/21.
//

import XCTest
import EmblemApp
import EmblemDateCalculator

class EmblemFileMapperTests: XCTestCase {

    func test_map_Emblem1FileNameMapstoFighter() {
        let (sut, emblems) = makeSUT()
        
        let emblemName = sut.map("emblem1")
        
        XCTAssertEqual(emblemName, emblems[0])
    }
    
    func test_map_Emblem2FileNameMapstoSupport() {
        let (sut, emblems) = makeSUT()
        
        let emblemName = sut.map("emblem2")
        
        XCTAssertEqual(emblemName, emblems[1])
    }
    
    func test_map_Emblem3FileNameMapstoMarksman() {
        let (sut, emblems) = makeSUT()
        
        let emblemName = sut.map("emblem3")
        
        XCTAssertEqual(emblemName, emblems[2])
    }
    
    func test_map_Emblem4FileNameMapstoTank() {
        let (sut, emblems) = makeSUT()
        
        let emblemName = sut.map("emblem4")
        
        XCTAssertEqual(emblemName, emblems[3])
    }
    
    func test_map_Emblem5FileNameMapstoJungle() {
        let (sut, emblems) = makeSUT()
        
        let emblemName = sut.map("emblem5")
        
        XCTAssertEqual(emblemName, emblems[4])
    }
    
    func test_map_Emblem6FileNameMapstoAssasin() {
        let (sut, emblems) = makeSUT()
        
        let emblemName = sut.map("emblem6")
        
        XCTAssertEqual(emblemName, emblems[5])
    }
    
    func test_map_Emblem7FileNameMapstoMage() {
        let (sut, emblems) = makeSUT()
        
        let emblemName = sut.map("emblem7")
        
        XCTAssertEqual(emblemName, emblems[6])
    }
    
    func test_map_AnyOtherFileNameMapstoNil() {
        let (sut, _) = makeSUT()
        
        let emblemName = sut.map("anyFileName")
        
        XCTAssertNil(emblemName)
    }
    
    //MARK: - Helpers
    
    func makeSUT() -> (sut: EmblemMapper, emblems: [Emblem]) {
        let emblems = Emblem.allCases
        let sut = EmblemMapper(emblems: emblems)
        return (sut, emblems)
    }

}
