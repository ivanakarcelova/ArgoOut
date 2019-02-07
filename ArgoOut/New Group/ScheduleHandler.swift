//
//  ScheduleHandler.swift
//  RPSSignOut
//
//  Created by Matthew Romage on 2/4/19.
//  Copyright © 2019 Lake. All rights reserved.
//

import Foundation

class ScheduleHandler
{
    var currentDay = Int()
    
    static let dataSharedInstance = ScheduleHandler()
    static var sharedInstance: ScheduleHandler {
        return self.dataSharedInstance
    }
    
    // MARK: - Declarations
    let date = Date()
    let dateFormatter = DateFormatter()
    
    // MARK: - Constructor
    init()
    {
        // Specify wanted date format
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "en_US")
    }
    
    // MARK: - Methods
    func findTodaysDate() -> String
    {
        // Format today's date
        let formattedDate = dateFormatter.string(from: date)
        
        // Replace "/" with "_"
        return formattedDate.replacingOccurrences(of: "/", with: "_")
    }
    
    
    
}
