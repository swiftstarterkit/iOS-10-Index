//
//  SliderValue.swift
//  Index
//
//  Created by Pao Yu on 2020-07-31.
//

import SwiftUI

struct SliderValue: View {
    let value: Float
    var body: some View {
        Text(String(format: "%0.0f", value))
            .font(.title)
            .frame(width: 80, height: 80)
            .foregroundColor(Color(.white))
            .background(Color(.systemRed))
            .clipShape(Circle())
    }
}
