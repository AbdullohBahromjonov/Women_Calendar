//
//  CalendarCell.swift
//  CalendarView
//
//  Created by Abdulloh on 01/12/22.
//

import SwiftUI

struct CalendarCell: View {
    @EnvironmentObject var dateHolder: DateHolder
    @Binding var selected: Bool
    let count: Int
    let startingSpaces: Int
    let daysInMonth: Int
    let daysInPrevMonth: Int
    
    var body: some View {
        Text("\(monthStruct().day())")
            .foregroundColor(textColor(type: monthStruct().monthType))
            .frame(width: UIScreen.main.bounds.size.width/9, height: UIScreen.main.bounds.size.width/6)
            .background(selected ? Color.pink : Color.white)
            .cornerRadius(8)
            .frame(maxWidth: UIScreen.main.bounds.size.width*0.9, maxHeight: .infinity)
    }
    
    func textColor(type: MonthType) -> Color {
        return type == MonthType.Current ? Color.black : Color.gray
    }
    
    func monthStruct() -> MonthStruct {
        let start = startingSpaces == 0 ? startingSpaces + 7 : startingSpaces
        if count <= start {
            let day = daysInPrevMonth + count - start
            return MonthStruct(monthType: .Previous, dayInt: day)
        }
        else if count - start > daysInMonth {
            let day = count - start - daysInMonth
            return MonthStruct(monthType: .Next, dayInt: day)
        }
        
        let day = count - start
        return MonthStruct(monthType: MonthType.Current, dayInt: day)
    }
}

struct CalendarCell_Previews: PreviewProvider {
    static var previews: some View {
        CalendarCell(selected: .constant(false), count: 1, startingSpaces: 1, daysInMonth: 1, daysInPrevMonth: 1)
            .background(Color.gray)
    }
}
