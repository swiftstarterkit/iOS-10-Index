//
//  IndexModel.swift
//  Index
//
//  Created by Pao Yu on 2020-07-31.
//

import Foundation

class IndexModel: ObservableObject {
    
    @Published var age: Float = 26
    @Published var height: Float = 165
    @Published var weight: Float = 63
    @Published var gender: Gender = Gender.female
    @Published var resultBMR: Float = 0
    
    func calculateBMR() {
        
        if gender == .female {
            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) - 161
        } else {
            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) + 5
        }
    }
}
