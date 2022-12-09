//
//  CalendarGridView.swift
//  CalendarView
//
//  Created by Abdulloh on 25/11/22.
//

import SwiftUI

struct CalendarGridView: View {
    @EnvironmentObject var dateHolder: DateHolder
    @State var selectedDay: Int? = nil
    
    var body: some View {
        VStack {
            let daysInMonth = CalendarHelper().daysInMonth(dateHolder.date)
            let firstDayOfMonth = CalendarHelper().firstOfMonth(dateHolder.date)
            let startingSpaces = CalendarHelper().weekDay(dateHolder.date)
            let prevMonth = CalendarHelper().minusMonth(dateHolder.date)
            let DaysInPrevMonth = CalendarHelper().daysInMonth(prevMonth)
            
            ForEach(0..<6) { row in
                HStack {
                    ForEach(0..<7) { column in
                        let count = column + (row * 7)
                        
                        CalendarCell(selected: .constant(selectedDay == count), count: count, startingSpaces: startingSpaces, daysInMonth: daysInMonth, daysInPrevMonth: DaysInPrevMonth)
                            .environmentObject(dateHolder)
                            .onTapGesture {
                                selectedDay = count
                            }
                
                    }
                }
            }
        }
        //.frame(maxHeight: .infinity)
    }
}

struct CalendarGridView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarGridView()
            .environmentObject(DateHolder())
    }
}
