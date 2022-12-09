//
//  MonthStruct.swift
//  CalendarView
//
//  Created by Abdulloh on 01/12/22.
//

import Foundation

struct MonthStruct {
    var monthType: MonthType
    var dayInt: Int
    func day() -> Int {
        return Int(dayInt)
    }
}

enum MonthType {
    case Previous
    case Current
    case Next
}
