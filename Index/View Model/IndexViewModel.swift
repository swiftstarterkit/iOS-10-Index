//
//  IndexViewModel.swift
//  Index
//
//  Created by Pao Yu on 2020-07-31.
//

import SwiftUI

class IndexViewModel: ObservableObject {
    
    @Published var activeCardIndex: Int = 0
    
    func moveToNextCard() {
        withAnimation {
            if activeCardIndex < 5 {
                activeCardIndex += 1
            } else {
                activeCardIndex = 0
            }
        }
    }
}
