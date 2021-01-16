//
//  EmblemFileMapperTests.swift
//  EmblemFileMapperTests
//
//  Created by Ricardo Herrera Petit on 1/9/21.
//

import XCTest

class EmblemMapper {
    func map(_ filename:String) -> String? {
        let name = "emblem"
        var returnedEmblem:String? = nil
        let emblems = ["Fighter", "Support", "Marksman"]
        var count = 1
        
        for emblem in emblems {
            let resultFileName = "\(name)\(count)"
            if(resultFileName == filename) {
                returnedEmblem = emblem
            }
            count = count + 1
        }
        
        return returnedEmblem
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
