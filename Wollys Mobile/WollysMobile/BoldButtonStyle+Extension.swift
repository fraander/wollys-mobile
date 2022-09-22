//
//  BoldButtonStyle.swift
//  MyFirstApp
//
//  Created by Frank Anderson on 9/22/22.
//

import SwiftUI

extension ButtonStyle where Self == BoldButtonStyle {
    static var boldButtonStyle: BoldButtonStyle { .init() }
}

struct BoldButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled;
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(.title2, design: .rounded, weight: .bold))
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 12)
                    .fill(isEnabled ? Color.pink : Color.secondary)
                    .opacity(configuration.isPressed ? 0.6 : 1)
            }
            .padding(40)
    }
}
