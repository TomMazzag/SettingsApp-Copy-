//
//  ContentView.swift
//  SettingsApp
//
//  Created by Tom Mazzag on 09/11/2023.
//

import SwiftUI

struct SettingsMenu: View {
    
    @State private var airplaneMode = false
    
    struct CustomLabelView<Destination: View>: View {
        var title: String
        var systemImageName: String
        var iconColour: Color
        var destination: Destination
        
        var body: some View {
            NavigationLink(destination: destination) {
                HStack {
                    Image(systemName: systemImageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 17.0, height: 17.0)
                        .padding(8)
                        .background(iconColour)
                        .cornerRadius(8)
                        .foregroundColor(.white)

                    Text(title)
                }
            }
            .navigationTitle("Settings")
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("General")) {
                    HStack {
                        Image(systemName: "airplane")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 17, height: 17)
                            .foregroundColor(.white)
                            .padding(8)
                            .background(Color.orange)
                            .cornerRadius(8)
                        Toggle("Airplane Mode", isOn: $airplaneMode)
                    }
                    CustomLabelView(title: "Wi-Fi", systemImageName: "wifi", iconColour: .blue, destination: SettingsExampleView())
                    CustomLabelView(title: "Bluetooth", systemImageName: "bolt.horizontal.fill", iconColour: .blue, destination: SettingsExampleView())
                    CustomLabelView(title: "Mobile Service", systemImageName: "antenna.radiowaves.left.and.right", iconColour: .green, destination: SettingsExampleView())
                    CustomLabelView(title: "Personal Hotspot", systemImageName: "personalhotspot", iconColour: .green, destination: SettingsExampleView())
                }
                Section(header: Text("Other")) {
                    CustomLabelView(title: "Notifications", systemImageName: "bell.badge", iconColour: .red, destination: SettingsExampleView())
                    CustomLabelView(title: "Sound & Haptics", systemImageName: "speaker.wave.3.fill", iconColour: .pink, destination: SettingsExampleView())
                    CustomLabelView(title: "Focus", systemImageName: "moon.fill", iconColour: .indigo, destination: SettingsExampleView())
                    CustomLabelView(title: "Screen Time", systemImageName: "hourglass.tophalf.fill", iconColour: .indigo, destination: SettingsExampleView())
                }
                CustomLabelView(title: "General", systemImageName: "gear", iconColour: .secondary, destination: General())
            }
        }
    }
}

#Preview {
    SettingsMenu()
}
