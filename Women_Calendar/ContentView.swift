//
//  ContentView.swift
//  Women_Calendar
//
//  Created by Abdulloh on 26/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            CalendarView()
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                }
            ReportsView()
                .tabItem {
                    Label("Reports", systemImage: "text.bubble")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CalendarView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("primary pink")
                    .ignoresSafeArea()
            }
            .navigationTitle("Calendar")
        }
    }
}

struct ReportsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("primary pink")
                    .ignoresSafeArea()
            }
            .navigationTitle("Reports")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("primary pink")
                    .ignoresSafeArea()
            }
            .navigationTitle("Profile")
        }
    }
}

struct SettingsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("primary pink")
                    .ignoresSafeArea()
                
                List {
                    Section(header: Text("Days")) {
                        Text("Number of days of menstruation")
                        Text("Lutein phase duration")
                        Text("The maximum duration of the cycle")
                    }
                    Section() {
                        Text("Row 1")
                        Text("Row 2")
                        Text("Row 3")
                    }
                }
                .scrollContentBackground(.hidden)
            }
            .navigationTitle("Settings")
        }
    }
}
