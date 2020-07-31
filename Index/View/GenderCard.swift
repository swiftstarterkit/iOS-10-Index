//
//  GenderCard.swift
//  Index
//
//  Created by Pao Yu on 2020-07-31.
//

import SwiftUI

struct UnitCard: View {
    
    @EnvironmentObject var model: IndexModel
    
    var body: some View {
        
        ZStack {
            
            CardBackground()
            
            VStack {
                
                CardLabel(title: "Gender", caption: "Select Your Gender")
                
                Picker("Gender", selection: $model.gender) {
                    Text("Male").tag(Units.male)
                    Text("Female").tag(Units.female)
                }   .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 150)
            }
        }   .frame(width: 300, height: 500)
    }
}
