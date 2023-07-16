//
//  WeatherButton.swift
//  SwiftUI-WeatherApp
//
//  Created by Florian Peyrony on 16/07/2023.
//

import SwiftUI

struct WeatherButton: View {
    var label: String
    var backgroundColor: Color
    var foregroundColor: Color
    
    var body: some View {
        Text(label)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
