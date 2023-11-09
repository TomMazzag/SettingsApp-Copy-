//
//  ContentView.swift
//  SettingsApp
//
//  Created by Tom Mazzag on 09/11/2023.
//

import SwiftUI

struct SettingsMenu: View {
    
    @State private var airplaneMode = false
    
    struct CustomLabelView: View {
        var title: String
        var systemImageName: String
        var iconColour: Color
        
        var body: some View {
            NavigationLink(destination: SettingsExampleView()) {
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
                    CustomLabelView(title: "Wi-Fi", systemImageName: "wifi", iconColour: .blue)
                    CustomLabelView(title: "Bluetooth", systemImageName: "bolt.horizontal.fill", iconColour: .blue)
                    CustomLabelView(title: "Mobile Service", systemImageName: "antenna.radiowaves.left.and.right", iconColour: .green)
                    CustomLabelView(title: "Personal Hotspot", systemImageName: "personalhotspot", iconColour: .green)
                }
                Section(header: Text("Other")) {
                    CustomLabelView(title: "Notifications", systemImageName: "bell.badge", iconColour: .red)
                    CustomLabelView(title: "Sound & Haptics", systemImageName: "speaker.wave.3.fill", iconColour: .pink)
                    CustomLabelView(title: "Focus", systemImageName: "moon.fill", iconColour: .indigo)
                    CustomLabelView(title: "Screen Time", systemImageName: "hourglass.tophalf.fill", iconColour: .indigo)
                }
            }
        }
    }
}

#Preview {
    SettingsMenu()
}
