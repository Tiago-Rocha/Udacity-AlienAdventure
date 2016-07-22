//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        

        var objects = [UDItem]()
        for itemm in inventory {
            print("This is one item \(itemm.itemID), \(itemm.name), \(itemm.historicalData["PlanetOfOrigin"])")
            if itemm.historicalData["PlanetOfOrigin"] as? String == planet {
                objects.append(itemm)
            }
        }/*
         
        let itemPlist = NSBundle.mainBundle().URLForResource("ItemList", withExtension: "plist")!
        let itemArray = NSArray(contentsOfURL: itemPlist) as![[String:AnyObject]]
        
         for item in itemArray {
            if let histData = item["HistoricalData"] {
                // Try out "as? UDItem"
                histData["PlanetOfOrigin"]!!.description == "Glinda" ? print("Item from Glinda") : print("Item not from Glinda")
                //ItemsOfGlinda.append(item as [[UDItem:AnyObject]]) : UDItems.append(UDItems.first!)
            } else {
                print("no hist data")
            }
            
        }*/
        
        print("Selected objects")
        for obj in objects {
            print("This is one item \(obj.itemID), \(obj.name), \(obj.historicalData["PlanetOfOrigin"])")
        }
        print("Next test \n")
        return objects
    }

}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"