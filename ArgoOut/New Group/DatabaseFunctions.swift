//
//  DatabaseFunctions.swift
//  ArgoOut
//
//  Created by Kyle Sieb on 2/6/19.
//  Copyright © 2019 ArgoOut. All rights reserved.
//

import UIKit
import Firebase

class DatabaseFunctions: NSObject {

    var ref: DatabaseReference!
    var databaseHandle: DatabaseHandle?
    
    static let dataSharedInstance = DatabaseFunctions()
    static var sharedInstance: DatabaseFunctions {
        return self.dataSharedInstance
    }
    
    public func setCurrentDay(completion: @escaping (Bool) -> ()) {
        self.ref = Database.database().reference()
        
        databaseHandle = ref?.child("Date").observe(.childAdded, with:
            { (snapshot) in
                
                if(snapshot.key == ScheduleHandler.sharedInstance.findTodaysDate()) {
                    ScheduleHandler.sharedInstance.currentDay = snapshot.value! as! Int
                    completion(true)
                }
                
            completion(false)
        })
    }
}
