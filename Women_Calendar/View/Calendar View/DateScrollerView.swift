//
//  DateScroller.swift
//  CalendarView
//
//  Created by Abdulloh on 25/11/22.
//

import SwiftUI

struct DateScrollerView: View {
    @EnvironmentObject var dateHolder: DateHolder
    
    var body: some View {
        HStack {
            Button (
                action: {previousMonth()},
                label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.blue)
                        .font(.system(size: 25, weight: .bold))
                }
            )
            
            Spacer()
            
            Text(CalendarHelper().monthYearString(dateHolder.date))
                .foregroundColor(.black)
                .font(.system(size: 22, weight: .bold))
            
            Spacer()
            
            Button (
                action: {nextMonth()},
                label: {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.blue)
                        .font(.system(size: 25, weight: .bold))
                }
            )
        }
        .padding()
    }
    
    func previousMonth() {
        dateHolder.date = CalendarHelper().minusMonth(dateHolder.date)
    }
    
    func nextMonth() {
        dateHolder.date = CalendarHelper().plusMonth(dateHolder.date)
    }
}

struct DateScrollerView_Previews: PreviewProvider {
    static var previews: some View {
        DateScrollerView()
            .environmentObject(DateHolder())
    }
}
