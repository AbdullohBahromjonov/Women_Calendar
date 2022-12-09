//
//  ReportsView.swift
//  Women_Calendar
//
//  Created by Abdulloh on 06/12/22.
//

import SwiftUI

struct ReportsView: View {
    @Binding var goToDetails: Bool
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("primary pink")
                    .ignoresSafeArea()
                VStack {
                    ScrollView() {
                        VStack() {
                            ForEach(reports) { report in
                                NavigationLink(destination: ReportsDetailView(daysDetails: .constant(report.days), goToDetails: $goToDetails), isActive: .constant(goToDetails)) {
                                    ReportItemView(date: report.date, status: "menstrual days have started", cycle: report.cycle)
                                        .onTapGesture {
                                            goToDetails = true
                                        }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Reports")
            .toolbarBackground(Color("secondary pink"), for: .navigationBar)
            .toolbar(goToDetails ? .hidden : .visible, for: .tabBar)
        }
        .navigationViewStyle(.stack)
    }
}

struct ReportsView_Previews: PreviewProvider {
    static var previews: some View {
        ReportsView(goToDetails: .constant(false))
    }
}
