//
//  ProfileView.swift
//  Women_Calendar
//
//  Created by Abdulloh on 09/12/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("primary pink")
                    .ignoresSafeArea()
                VStack {
                    ScrollView() {
                        
                    }
                }
            }
            .navigationTitle("Profile")
            .toolbarBackground(Color("secondary pink"), for: .navigationBar)
        }
        .navigationViewStyle(.stack)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
