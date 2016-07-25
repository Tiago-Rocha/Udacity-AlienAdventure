//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        var charDic = [Character:Int]()
        for item in inventory {
            let name = item.name.lowercaseString
            for char in name.characters {
                if charDic[char] != nil {
                    charDic[char] = charDic[char]! + 1
                } else {
                    charDic[char] = 1
                }
            }
        }
        for (key, value) in charDic {
            if value == charDic.values.maxElement() {
                return key
            }
        }
        
        return nil
    }
}
