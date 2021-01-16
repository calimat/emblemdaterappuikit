//
//  EmblemFileMapperTests.swift
//  EmblemFileMapperTests
//
//  Created by Ricardo Herrera Petit on 1/9/21.
//

import XCTest

class EmblemMapper {
    func map(_ filename:String) -> String {
        if(filename == "emblem1")
        {
            return "Fighter"
        }
        return "Support"
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

}
