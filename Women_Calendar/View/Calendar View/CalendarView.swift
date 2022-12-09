//
//  CalendarView.swift
//  Women_Calendar
//
//  Created by Abdulloh on 09/12/22.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("primary pink")
                    .ignoresSafeArea()
                VStack {
                    
                }
            }
            .navigationTitle("Calendar")
            .toolbarBackground(Color("secondary pink"), for: .navigationBar)
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
