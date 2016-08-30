//
//  BoostItemValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func boostItemValue(inventory: [UDItem]) -> [UDItem] {
        print(inventory.map {$0.baseValue + 100})
        
        let increaseBaseValue = inventory.map({(item:UDItem) -> UDItem in
            item.baseValue += 100
            return item
        })
        //let inventory = inventory.map {$0.baseValue + 100}
        return [UDItem]()
    }
}
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"