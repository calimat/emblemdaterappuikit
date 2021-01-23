//
//  EmblemMapper.swift
//  EmblemApp
//
//  Created by Ricardo Herrera Petit on 1/16/21.
//

import Foundation

public class EmblemMapper {
    public init() {}
    public func map(_ filename:String) -> String? {
        let name = "emblem"
        var returnedEmblem:String? = nil
        let emblems = ["Fighter", "Support", "Marksman", "Tank", "Jungle"]
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
