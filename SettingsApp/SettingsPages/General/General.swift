//
//  General.swift
//  SettingsApp
//
//  Created by Tom Mazzag on 09/11/2023.
//

import SwiftUI

struct General: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink(destination: About()) {
                        Text("About")
                    }
                    NavigationLink(destination: SettingsExampleView()) {
                        Text("Software Update")
                    }
                }
                Section {
                    NavigationLink(destination: SettingsExampleView()) {
                        Text("AirDrop")
                    }
                    NavigationLink(destination: SettingsExampleView()) {
                        Text("AirPlay & Handoff")
                    }
                    NavigationLink(destination: SettingsExampleView()) {
                        Text("Picture in picture")
                    }
                    NavigationLink(destination: SettingsExampleView()) {
                        Text("CarPlay")
                    }
                }
                Section {
                    NavigationLink(destination: SettingsExampleView()) {
                        Text("iPhoneStorage")
                    }
                    NavigationLink(destination: SettingsExampleView()) {
                        Text("Background App Refresh")
                    }
                }
            }
            .navigationBarTitle("General")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top, -30)
        }
        .padding(.top, -40)
    }
}

#Preview {
    General()
}
