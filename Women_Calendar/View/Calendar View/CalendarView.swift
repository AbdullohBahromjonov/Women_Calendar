//
//  CalendarView.swift
//  Women_Calendar
//
//  Created by Abdulloh on 09/12/22.
//

import SwiftUI

struct CalendarView: View {
    @EnvironmentObject var dateHolder: DateHolder
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("primary pink")
                    .ignoresSafeArea()
                VStack {
                    DateScrollerView()
                        .environmentObject(dateHolder)
                    DayOfWeekView()
                    CalendarGridView()
                        .environmentObject(dateHolder)
                }
                .padding(50)
            }
            .navigationTitle("Calendar")
            .toolbarBackground(Color("secondary pink"), for: .navigationBar)
        }
        .navigationViewStyle(.stack)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
            .environmentObject(DateHolder())
    }
}

struct MultiDatePickerExample: View {
    @Environment(\.calendar) var calendar
    @Environment(\.timeZone) var timeZone
    
    var bounds: Range<Date> {
            let start = calendar.date(
                from: DateComponents(
                    timeZone: timeZone,
                    year: 2022,
                    month: 6,
                    day: 20)
            )!
            let end = calendar.date(
                from: DateComponents(
                    timeZone: timeZone,
                    year: 2022,
                    month: 6,
                    day: 24)
            )!
            
            return start..<end
        }
    
    @State private var dates: Set<DateComponents> = []

    var body: some View {
        MultiDatePicker("Dates Available", selection: $dates, in: bounds)

            .fixedSize()
    }
}
