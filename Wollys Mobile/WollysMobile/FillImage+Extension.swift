//
//  FillImageModifier.swift
//  MyFirstApp
//
//  Created by Frank Anderson on 9/22/22.
//

import Foundation
import SwiftUI

extension Image {
    func fillImage() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 300)
            .clipped()
    }
}
