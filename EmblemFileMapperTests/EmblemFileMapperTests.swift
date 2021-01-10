//
//  EmblemFileMapperTests.swift
//  EmblemFileMapperTests
//
//  Created by Ricardo Herrera Petit on 1/9/21.
//

import XCTest

class EmblemMapper {
    func map(_ filename:String) -> String {
        return "Fighter"
    }
}

class EmblemFileMapperTests: XCTestCase {

    func test_makesureThatEmblem1FileNameMapstoFighter() {
        let sut = EmblemMapper()
        
        let emblemName = sut.map("emblem1")
        
        XCTAssertEqual(emblemName, "Fighter")
    }

}
