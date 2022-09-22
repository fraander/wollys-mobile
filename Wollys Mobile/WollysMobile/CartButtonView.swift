//
//  CartView.swift
//  MyFirstApp
//
//  Created by Frank Anderson on 9/21/22.
//

import SwiftUI

struct CartButtonView: View {
    @Binding var cart: [WollyItem]
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(systemName: "cart")
                .padding(.bottom, 10)
                .padding(.leading, 4)
            
            if (cart.count > 0) {
                Text("\(cart.count)")
                    .font(.system(.caption, design: .rounded, weight: .heavy))
                    .foregroundColor(Color.white)
                    .padding(6)
                    .background {
                        Circle().fill(Color.pink)
                    }
                    .transition(.scale)
            }
        }
    }
}

struct CartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CartButtonView(cart: .constant(Examples.wollyItems))
        
        CartButtonView(cart: .constant([WollyItem]()))
    }
}
