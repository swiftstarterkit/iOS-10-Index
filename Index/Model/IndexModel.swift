//
//  IndexModel.swift
//  Index
//
//  Created by Pao Yu on 2020-07-31.
//

import Foundation

class IndexModel: ObservableObject {
    
    @Published var unit: Unit = Unit.metric
    
    @Published var metricHeightCM: Float = 170
    @Published var metricWeightKG: Float = 65
    
    @Published var imperialHeightFT: Float = 6
    @Published var imperialHeightIN: Float = 2
    @Published var imperialWeightLB: Float = 150
    
    @Published var resultBMI: Float = 0
    
    var message: String {
        
        switch resultBMI {
        case 0..<16:
            return "Severe Thinness"
        case 16..<17:
            return "Moderate Thinness"
        case 17..<18.5:
            return "Mild Thinness"
        case 18.5..<25:
            return "Normal"
        case 25..<30:
            return "Overweight"
        case 30..<35:
            return "Obese Class I"
        case 35..<40:
            return "Obese Class II"
        case 40...:
            return "Obese Class III"
        default:
            return "Calculation Error"
        }
        
    }
    
    func calculateBMI() {
        
        switch unit {
        case .metric:
            resultBMI = metricWeightKG / pow(metricHeightCM / 100, 2)
        case .imperial:
            let totalImperialHeight = imperialHeightIN + ( imperialHeightFT * 12 )
            resultBMI = 703 * (imperialWeightLB / pow(totalImperialHeight, 2))
        }
    }
}
