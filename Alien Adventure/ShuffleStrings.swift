//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        var string1check = ""
        var string2check = ""
        
        if s1.characters.count + s2.characters.count !=  shuffle.characters.count {
            return false
        }

        for char in shuffle.characters {
            if s1.characters.contains(char) && s2.characters.contains(char) {
                let index = s1.startIndex.advancedBy(string1check.characters.count-1)
                s1[index] == char ? string1check.append(char) : string2check.append(char)
            } else if s1.characters.contains(char) {
                string1check.append(char)
            } else if s2.characters.contains(char) {
                string2check.append(char)
            } else {
                return false
            }
        }
        
        if string2check == s2 && string1check == s1 {
            print(s1)
            print(s2)
            print("\(shuffle) - is correct")
            return true
        } else {
            print(s1)
            print(s2)
            print("\(shuffle) - is incorrect")
            return false
        }
    }
}
