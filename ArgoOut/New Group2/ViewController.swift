//
//  ViewController.swift
//  ArgoOut
//
//  Created by Ivana Karcelova on 11/30/18.
//  Copyright © 2018 ArgoOut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         DatabaseFunctions.sharedInstance.setCurrentDay(completion: { (success) -> Void in
            if success {
                print(ScheduleHandler.sharedInstance.currentDay, " is the current day")
            }
        })
    }
}

