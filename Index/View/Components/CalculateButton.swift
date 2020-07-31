//
//  CalculateButton.swift
//  Index
//
//  Created by Pao Yu on 2020-07-31.
//

import SwiftUI

struct CalculateButton: View {
    
    @EnvironmentObject var model: IndexModel
    @EnvironmentObject var viewModel: IndexViewModel
    
    var body: some View {
        Text("CALCULATE")
            .font(.caption2)
            .fontWeight(.bold)
            .padding(.all, 8)
            .foregroundColor(Color(.white))
            .background(Color(.systemRed))
            .cornerRadius(20)
            .frame(height: 100)
            .padding(.top, 50)
            .onTapGesture() {
                self.model.calculateBMI()
                self.viewModel.moveToNextCard()
            }
    }
}

