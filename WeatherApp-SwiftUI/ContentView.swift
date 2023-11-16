//
//  ContentView.swift
//  WeatherApp-SwiftUI
//
//  Created by Macbook Pro on 16/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue,Color.blue, Color.white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Karachi, PK")
                    .font(.system(size: 32))
                    .fontWeight(.medium)
                    .fontDesign(.default)
                    .foregroundStyle(.white)
                    .padding()
                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
