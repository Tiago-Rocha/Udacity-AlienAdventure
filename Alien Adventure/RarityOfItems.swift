//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var itemRarity = [UDItemRarity:Int]()
        itemRarity[.Common] = 0
        itemRarity[.Uncommon] = 0
        itemRarity[.Rare] = 0
        itemRarity[.Legendary] = 0
        
        for item in inventory {
            switch item.rarity {
            case .Common:
                itemRarity[.Common]! += 1
            case .Uncommon:
                itemRarity[.Uncommon]! += 1
            case .Rare:
                itemRarity[.Rare]! += 1
            case .Legendary:
                itemRarity[.Legendary]! += 1
            }
        }
        return itemRarity
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"