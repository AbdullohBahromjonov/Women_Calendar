//
//  DayOfWeekView.swift
//  CalendarView
//
//  Created by Abdulloh on 25/11/22.
//

import SwiftUI

struct DayOfWeekView: View {
    var body: some View {
        HStack {
            Text("Mon").dayOfTheWeek()
            Text("Tue").dayOfTheWeek()
            Text("Wed").dayOfTheWeek()
            Text("Thu").dayOfTheWeek()
            Text("Fri").dayOfTheWeek()
            Text("Sat").dayOfTheWeek()
            Text("Sun").dayOfTheWeek()
        }
    }
}

struct DayOfWeekView_Previews: PreviewProvider {
    static var previews: some View {
        DayOfWeekView()
    }
}

extension Text {
    func dayOfTheWeek() -> some View{
        self
            .frame(maxWidth: .infinity)
            .fontWeight(.medium)
            .lineLimit(1)
    }
}
