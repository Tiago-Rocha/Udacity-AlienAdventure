//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        var objects = [UDItem]()
        var obj:UDItem?
        
        for item in inventory {
            if item.historicalData["PlanetOfOrigin"] as? String == planet {
                objects.append(item)
            }
        }
        
        if objects.isEmpty {
            obj = nil
        } else {
            for i in 0..<objects.count-1 {
                let first = objects[i].historicalData["CarbonAge"] as? Int
                let second = objects[i+1].historicalData["CarbonAge"] as? Int
                
                if first < second {
                    obj = objects[i+1]
                } else {
                    obj = objects[i]
                }
            }
        }
        return obj
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"