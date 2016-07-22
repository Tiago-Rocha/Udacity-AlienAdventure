//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        
        let comparisonString = "THE ETERNAL STAR"
        var relic: UDItem?
        
        for i in 0..<inventory.count {
            
            if inventory[i].inscription != nil && inventory[i].inscription!.containsString(comparisonString){
                relic = inventory[i]
            }
        }
        return relic
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"