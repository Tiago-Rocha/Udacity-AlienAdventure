//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
        var allRequestTypes = requestTypes
        
        for badge in badges {
            if let indexForBadge = allRequestTypes.indexOf(badge.requestType) {
                allRequestTypes.removeAtIndex(indexForBadge)
            }
        }
        return allRequestTypes.count == 0
    }
}