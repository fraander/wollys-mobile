//
//  MuffinView.swift
//  MyFirstApp
//
//  Created by Frank Anderson on 9/21/22.
//

import SwiftUI

struct MuffinView: View {
    let muffinTopColor = Color(red: 226/256, green: 206/256, blue: 180/256)
    let muffinBottomColor = Color.brown
    
    var body: some View {
        ZStack {
            Image(systemName: "rectangle.roundedbottom.fill")
                .font(.caption)
                .offset(y: 4)
                .foregroundColor(muffinBottomColor)
            Image(systemName: "icloud.fill")
                .font(.body)
                .offset(y: -4)
                .foregroundColor(muffinTopColor)
        }
        .shadow(radius: 2)
    }
}

struct MuffinView_Previews: PreviewProvider {
    static var previews: some View {
        MuffinView()
    }
}
