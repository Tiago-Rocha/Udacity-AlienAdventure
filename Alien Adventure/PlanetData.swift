//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        let planetsInfoJSON = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let rawPlanetsJSON = NSData(contentsOfURL: planetsInfoJSON)
        var maxTotal = 0
        var maxPlanet = ""
    
        let planetsArray: [[String: AnyObject]]!
        do {
            planetsArray = try! NSJSONSerialization.JSONObjectWithData(rawPlanetsJSON!, options: NSJSONReadingOptions()) as! [[String: AnyObject]]
        }
        for planet in planetsArray! {
                var total = 0
                if let common = planet["CommonItemsDetected"] {
                    total += common as! Int * 1
                }
                if let uncommon = planet["UncommonItemsDetected"] {
                    total += uncommon as! Int * 2
                }
                if let rare = planet["RareItemsDetected"] {
                    total += rare as! Int * 3
                }
                if let legendary = planet["LegendaryItemsDetected"] {
                    total += legendary as! Int * 4
                }
            
            if total > maxTotal {
                maxPlanet = planet["Name"] as! String
                maxTotal = total
            }
                print("\(planet["Name"]) has \(total) points)")
            }
        /*
        "Name": "Preshan",
        "CommonItemsDetected": 77, - 1
        "UncommonItemsDetected": 33, - 2
        "RareItemsDetected": 20, - 3
        "LegendaryItemsDetected": 8 - 4
         */
                return maxPlanet
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"