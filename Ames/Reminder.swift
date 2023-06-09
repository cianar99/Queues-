//
//  Reminder.swift
//  Ames
//
//  Created by Ciana on 18/05/23.
//

import SwiftUI

struct Reminder: Identifiable {
    var id = UUID().uuidString
    var title : String
    var time : Date = Date()
    
    }
struct ReminderDate: Identifiable {
    var id = UUID().uuidString
    var remind : [Reminder]
    var remindDate : Date
    
    
}
func getSampleDate(offset: Int)-> Date {
    let calender = Calendar.current
    let date = calender.date(byAdding: .day, value: offset, to: Date())
    return date ?? Date()
}
func addTask(title: String, date: Date) {
    let newReminder = Reminder(title: title)
    var foundDate = false
    
    for index in 0..<tasks.count {
        if tasks[index].remindDate == date {
            tasks[index].remind.append(newReminder)
            foundDate = true
            break
        }
    }
    
    if !foundDate {
        let newReminderDate = ReminderDate(remind: [newReminder], remindDate: date)
        tasks.append(newReminderDate)
    }
}

var tasks : [ReminderDate] = [
    ReminderDate(remind: [
        Reminder(title : "ciana"),
        Reminder(title : "ashel"),
        Reminder(title: "ASHTON")
    ], remindDate: getSampleDate(offset: -15)
                ),
    ReminderDate(remind:[
        Reminder(title: "abner")
       ], remindDate:getSampleDate(offset: 4)
    ),
    ReminderDate(remind:[
        Reminder(title: "Adwaith")
       ], remindDate:getSampleDate(offset: 6)
    ),
    ReminderDate(remind:[
        Reminder(title: "Aju"),
        Reminder(title:"atul")
       ], remindDate:getSampleDate(offset: 10)
    ),
    ReminderDate(remind:[
        Reminder(title: "Suzzy's Birthday")
       ], remindDate:getSampleDate(offset: 25)
    ),
    ReminderDate(remind:[
        Reminder(title: "eyaaaaan")
       ], remindDate:getSampleDate(offset: 22)
    ),
    ReminderDate(remind:[
        Reminder(title: "Brayan")
       ], remindDate:getSampleDate(offset: 8)
    ),
]

