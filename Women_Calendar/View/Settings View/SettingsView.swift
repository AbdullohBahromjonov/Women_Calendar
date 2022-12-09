//
//  SettingsView.swift
//  Women_Calendar
//
//  Created by Abdulloh on 29/11/22.
//

import SwiftUI

struct SettingsView: View {
    @State var goToDetails = false
    @State var showCycle = true
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("primary pink")
                    .ignoresSafeArea()
                
                List {
                    Section(header:Text("Days").fontWeight(.bold)) {
                        NavigationLink(
                            destination: Text("destination"),
                            label: {
                                
                                VStack(alignment: .leading, spacing: 3) {
                                    Text("Number of days of menstruation")
                                    Text("4")
                                        .foregroundColor(.gray)
                                }
                                .font(.system(size: 14))
                            }
                        )
                        NavigationLink(
                            destination: Text("destination"),
                            label: {
                                VStack(alignment: .leading, spacing: 3) {
                                    Text("Lutein phase duration")
                                    Text("12")
                                        .foregroundColor(.gray)
                                }
                                .font(.system(size: 14))
                            }
                        )
                        NavigationLink(
                            destination: Text("destination"),
                            label: {
                                VStack(alignment: .leading, spacing: 3) {
                                    Text("The maximum duraiton of the cycle")
                                    Text("183")
                                        .foregroundColor(.gray)
                                }
                                .font(.system(size: 14))
                            }
                        )
                    }
                    
                    Section(header: Text("Week day").fontWeight(.bold)) {
                        NavigationLink(
                            destination: Text("destination"),
                            label: {
                                VStack(alignment: .leading, spacing: 3) {
                                    Text("The first day of the week")
                                    Text("Monday")
                                        .foregroundColor(.gray)
                                }
                                .padding(.vertical, 3)
                                .font(.system(size: 14))
                            }
                        )
                    }
                    
                    Section(header: Text("Additional")) {
                        Toggle("Always go to details", isOn: $goToDetails)
                        Toggle("Show menstural cycle days", isOn: $showCycle)
                    }
                }
                .scrollContentBackground(.hidden)
            }
            .navigationTitle("Settings")
            .toolbarBackground(Color("secondary pink"), for: .navigationBar)
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
