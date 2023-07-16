//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by Florian Peyrony on 13/07/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        ZStack {
           // LinearGradient(colors: [.blue, .white],
            //               startPoint: .topLeading,
              //             endPoint: .bottomTrailing)
            BackgroundView(topColor: .blue, bottomColor: Color("lightblue"))
            VStack(spacing: 15) {
                CityName(nameOfCity: "Cupertino, CA")
                MainWeatherStatusView(imageName: "cloud.sun.fill", degrees: 77)
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperatur: 71)
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperatur: 88)
                    WeatherDayView(dayOfWeek: "WED", imageName: "wind.snow", temperatur: 55)
                    WeatherDayView(dayOfWeek: "THU", imageName: "cloud.sun.fill", temperatur: 69)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "snow", temperatur: 25)
                }
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperatur: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 15, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
            Text("\(temperatur)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomLeading)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityName: View {
    var nameOfCity: String
    var body: some View {
        Text(nameOfCity)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var degrees: Int
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 180, height: 180)
            Text("\(degrees)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}
