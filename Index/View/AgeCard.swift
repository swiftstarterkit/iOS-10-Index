//
//  AgeCard.swift
//  Index
//
//  Created by Pao Yu on 2020-07-31.
//

import SwiftUI

struct AgeCard: View {
    
    @EnvironmentObject var model: IndexModel
    
    var body: some View {
        
        ZStack {
            
            CardBackground()
            
            VStack {
                
                CardLabel(title: "Age", caption: "Enter Your Age")
                
                VStack {
                    SliderValue(value: model.age)
                        .padding(.bottom, 15)
                    Slider(value: $model.age, in: 15...80, step: 1.0)
                        .accentColor(Color(.systemRed))
                }   .frame(width: 150)
                
            }
        }   .frame(width: 300, height: 500)
    }
}
