//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
        for request in requestTypes {
            if !containsRequestType(badges, requestType: request) {
                return false
            }
        }
        return true
    }
    
    func containsRequestType (badges: [Badge], requestType: UDRequestType) -> Bool {
        
        for badge in badges {
            if requestType == badge.requestType {
                return true
            }
        }
        return false
    }
}
