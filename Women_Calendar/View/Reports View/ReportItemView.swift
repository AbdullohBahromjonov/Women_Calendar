//
//  ReportItemView.swift
//  Women_Calendar
//
//  Created by Abdulloh on 09/12/22.
//

import SwiftUI

struct ReportItemView: View {
    let date: String
    let status: String
    let cycle: String
    
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(10)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(date)
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .bold))
                    Text(status)
                        .foregroundColor(.black)
                        .font(.system(size: 14, weight: .bold))
                    Text(cycle)
                        .foregroundColor(.black)
                        .font(.system(size: 14, weight: .bold))
                }
                Spacer()
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .foregroundColor(.blue)
            }
            .padding()
        }
    }
}


struct ReportItemView_Previews: PreviewProvider {
    static var previews: some View {
        ReportItemView(date: "20.20.2020", status: "The first details", cycle: "11")
    }
}
