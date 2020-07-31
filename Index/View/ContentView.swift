//
//  ContentView.swift
//  Index
//
//  Created by Pao Yu on 2020-07-31.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: IndexModel
    @EnvironmentObject var viewModel: IndexViewModel
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            if viewModel.activeCardIndex == 0 {
                TitleCard()
            } else if viewModel.activeCardIndex == 1 {
                GenderCard()
            } else if viewModel.activeCardIndex == 2 {
                AgeCard()
            } else if viewModel.activeCardIndex == 3 {
                HeightCard()
            } else if viewModel.activeCardIndex == 4 {
                WeightCard()
            } else {
                ResultCard()
            }
            
            if viewModel.activeCardIndex < 4 || viewModel.activeCardIndex == 5 {
                NextButton()
            } else {
                CalculateButton()
            }
        }
    }
}
