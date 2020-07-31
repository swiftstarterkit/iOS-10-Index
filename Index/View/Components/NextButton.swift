//
//  NextButton.swift
//  Index
//
//  Created by Pao Yu on 2020-07-31.
//

import SwiftUI

struct NextButton: View {
    
    @EnvironmentObject var viewModel: IndexViewModel
    
    var body: some View {
        Image(systemName: "chevron.right.circle.fill")
            .font(.largeTitle)
            .foregroundColor(Color(.systemGreen))
            .frame(height: 100)
            .padding(.top, 50)
            .onTapGesture(perform: viewModel.moveToNextCard)
    }
}
