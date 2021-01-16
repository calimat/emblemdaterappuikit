//
//  EmblemFileMapperTests.swift
//  EmblemFileMapperTests
//
//  Created by Ricardo Herrera Petit on 1/9/21.
//

import XCTest

class EmblemMapper {
    func map(_ filename:String) -> String? {
        if(filename == "emblem1")
        {
            return "Fighter"
        }
        
        if(filename == "emblem2") {
            return "Support"
        }
        
        if(filename == "emblem3")
        {
            return "Marksman"
        }
        
        return nil
    }
}

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
    
    
    func test_map_AnyOtherFileNameMapstoNil() {
        let sut = EmblemMapper()
        
        let emblemName = sut.map("anyFileName")
        
        XCTAssertNil(emblemName)
    }

}
