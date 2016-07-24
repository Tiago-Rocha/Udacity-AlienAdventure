//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        var bannedItemsArray = [Int]()
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        let itemsArray = NSArray(contentsOfURL: dataFileURL) as! [[String:AnyObject]]
        let stringToSearch = "Laser"
        let maxAge = 30
        
        for item in itemsArray {
            if (item["Name"]!.containsString(stringToSearch)) {
                if let histData = item["HistoricalData"] {
                    if (histData["CarbonAge"] as? Int) < maxAge {
                      bannedItemsArray.append(item["ItemID"] as! Int)
                    }
                }
            }
        }
        return bannedItemsArray
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"