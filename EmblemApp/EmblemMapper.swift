//
//  EmblemMapper.swift
//  EmblemApp
//
//  Created by Ricardo Herrera Petit on 1/16/21.
//

import Foundation
import EmblemDateCalculator

public class EmblemMapper {
    private let emblems: [Emblem]
    
    public init(emblems: [Emblem]) {
        self.emblems = emblems
    }
    
    public func map(_ filename:String) -> Emblem? {
        let name = "emblem"
        var returnedEmblem:Emblem? = nil
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
