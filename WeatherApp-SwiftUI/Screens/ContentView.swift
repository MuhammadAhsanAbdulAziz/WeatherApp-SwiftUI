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
            BackgroundView(topColor: Color.blue, bottomColor: Color.lightblue)
            VStack{
                CityTextView(cityName: "Karachi, PK")
                defaultWeather(
                    weatherImage: "cloud.sun.fill",
                    temp: 76)
                HStack(spacing:20){
                    WeatherDayView(
                        day: "TUE",
                        image: "cloud.sun.fill",
                        temp: 74)
                    WeatherDayView(
                        day: "WED",
                        image: "sun.max.fill",
                        temp: 69)
                    WeatherDayView(
                        day: "THUR",
                        image: "cloud.snow.fill",
                        temp: 70)
                    WeatherDayView(
                        day: "FRI",
                        image: "cloud.sleet.fill",
                        temp: 74)
                    WeatherDayView(
                        day: "SAT",
                        image: "wind",
                        temp: 80)
                }
                
                Spacer()
                
                Button{
                    
                } label: {
                    ButtonDayNight(action: "Change Day Time",
                                   textColor: .blue,
                                   backgroundColor: .white
                    )
                }
                
                
                Spacer()
                
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var day : String
    var image: String
    var temp : Int
    var body: some View {
        VStack{
            Text(day)
                .foregroundStyle(.white)
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text("\(temp)°")
                .foregroundStyle(.white)
                .font(.system(size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
        }
    }
}

struct BackgroundView: View {
    var topColor : Color
    var bottomColor : Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView: View{
    var cityName: String
    var body: some View{
        Text(cityName)
            .font(.system(size: 32))
            .fontWeight(.medium)
            .fontDesign(.default)
            .foregroundStyle(.white)
            .padding()
    }
}

struct defaultWeather: View {
    var weatherImage: String
    var temp: Int
    var body: some View {
        VStack(spacing:0){
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            Text("\(temp)°")
                .foregroundStyle(.white)
                .font(.system(size: 70))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
        .padding(.bottom,30)
    }
}

struct ButtonDayNight: View {
    var action: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View {
        Text(action)
            .frame(width:300,height:50)
            .background(backgroundColor)
            .foregroundStyle(textColor)
            .fontWeight(.medium)
            .cornerRadius(10)
    }
}
