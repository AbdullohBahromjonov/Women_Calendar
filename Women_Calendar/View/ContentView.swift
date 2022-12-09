//
//  ContentView.swift
//  Women_Calendar
//
//  Created by Abdulloh on 26/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var goToDetails = false
    
    var body: some View {
        TabView {
            CalendarView()
                .toolbarBackground(Color("secondary pink"), for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                }
            ReportsView(goToDetails: $goToDetails)
                .toolbarBackground(Color("secondary pink"), for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
                .tabItem {
                    Label("Reports", systemImage: "text.bubble")
                }
            ProfileView()
                .toolbarBackground(Color("secondary pink"), for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            SettingsView()
                .toolbarBackground(Color("secondary pink"), for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DateHolder())
    }
}










