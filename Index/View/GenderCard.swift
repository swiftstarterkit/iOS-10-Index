//
//  GenderCard.swift
//  Index
//
//  Created by Pao Yu on 2020-07-31.
//

import SwiftUI

struct GenderCard: View {
    
    @EnvironmentObject var model: IndexModel
    
    var body: some View {
        
        ZStack {
            
            CardBackground()
            
            VStack {
                
                CardLabel(title: "Gender", caption: "Select Your Gender")
                
                Picker("Gender", selection: $model.gender) {
                    Text("Male").tag(Gender.male)
                    Text("Female").tag(Gender.female)
                }   .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 150)
            }
        }   .frame(width: 300, height: 500)
    }
}
