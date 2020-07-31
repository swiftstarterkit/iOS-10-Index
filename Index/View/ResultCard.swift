//
//  ResultCard.swift
//  Index
//
//  Created by Pao Yu on 2020-07-31.
//

import SwiftUI

struct ResultCard: View {
    
    @EnvironmentObject var model: IndexModel
    
    var body: some View {
        
        ZStack {
            
            CardBackground()
            
            VStack {
                
                CardLabel(title: "Result", caption: "Your Body Mass Index is")
                
                VStack {
                    
                    Text(String(format: "%0.0f", model.resultBMR))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.systemRed))
                    
                    Text("Calories / Day")
                        .font(.caption)
                        .padding(.top, 20)
                        .foregroundColor(Color(.systemGray))
                    
                }
            }
        }   .frame(width: 300, height: 500)
    }
}

