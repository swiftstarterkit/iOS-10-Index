//
//  HeightCard.swift
//  Index
//
//  Created by Pao Yu on 2020-07-31.
//

import SwiftUI

struct HeightCard: View {
    
    @EnvironmentObject var model: IndexModel
    
    var body: some View {
        
        ZStack {
            
            CardBackground()
            
            VStack {
                
                CardLabel(title: "Height", caption: "Enter Your Height (CM)")
                
                VStack {
                    SliderValue(value: model.height)
                        .padding(.bottom, 15)
                    Slider(value: $model.height, in: 1...250, step: 1.0)
                        .accentColor(Color(.systemRed))
                }   .frame(width: 150)
                
            }
        }   .frame(width: 300, height: 500)
    }
}
