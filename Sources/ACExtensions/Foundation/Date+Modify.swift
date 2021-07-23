//
//  Date+Modify.swift
//  ACExtensions
//
//  Created by AppCraft LLC on 8/23/21.
//

import Foundation

public extension Date {
    
    func addMinutes(_ minutesToAdd: Double) -> Date {
        let secondsInMinutes: TimeInterval = minutesToAdd * 60
        
        return self.addingTimeInterval(secondsInMinutes)
    }
    
    func addHours(_ hoursToAdd: Double) -> Date {
        let secondsInHours: TimeInterval = hoursToAdd * 60 * 60
        
        return self.addingTimeInterval(secondsInHours)
    }
    
    func addDays(_ daysToAdd: Double) -> Date {
        let secondsInDays: TimeInterval = daysToAdd * 60 * 60 * 24
        
        return self.addingTimeInterval(secondsInDays)
    }
    
}
