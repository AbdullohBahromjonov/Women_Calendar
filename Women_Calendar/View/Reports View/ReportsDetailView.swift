//
//  ReportsDetailView.swift
//  Women_Calendar
//
//  Created by Abdulloh on 06/12/22.
//

import SwiftUI

struct ReportsDetailView: View {
    @Binding var daysDetails: [Days]
    @Binding var goToDetails: Bool
    
    var body: some View {
        ZStack {
            Color("primary pink")
                .ignoresSafeArea()
            
            ScrollView(.vertical) {
                ForEach(daysDetails) { day in
                    VStack(alignment: .leading) {
                        Text("\(day.date) Mestruation day - \(day.day)".uppercased())
                            .font(.system(size: 15, weight: .bold))
                        
                        ZStack(alignment: .leading) {
                            Color.white
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Intensivity:")
                                Text("\(day.intensivity)")
                                Text("Comment:")
                                Text(isEmpty(text: day.comment))
                                Text("Details:")
                                Text(isEmpty(text: day.details))
                                Text("Events:")
                                Text(isEmpty(text: day.events))
                            }
                            .padding()
                        }
                        .cornerRadius(12)
                    }
                    .padding(.top)
                    .padding()
                }
            }
        }
        .onDisappear {
            goToDetails = false
        }
        .navigationTitle("Reports")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(Color("secondary pink"), for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
    }
    
    func isEmpty(text: String) -> String {
        if text.isEmpty {
            return "-"
        } else {
            return text
        }
    }
}

struct ReportsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ReportsDetailView(daysDetails: .constant([Days(date: "20.20.2020", day: 1, intensivity: 2, comment: "", details: "", events: "")]), goToDetails: .constant(true))
            .environmentObject(MyObservableObject())
    }
}
