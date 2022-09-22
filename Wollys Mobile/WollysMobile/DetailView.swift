//
//  DetailView.swift
//  MyFirstApp
//
//  Created by Frank Anderson on 9/21/22.
//

import SwiftUI

// Displays the photo of a specific item
struct DetailView: View {
    @Binding var item: WollyItem
    @Binding var cart: [WollyItem]
    
    var body: some View {
        
        VStack(spacing: 12) {
            
            Group {
                
                Image(item.title)
                    .fillImage()
                
                Text(item.title)
                    .font(.system(
                        .title, design: .rounded,
                        weight: .regular))
                    .padding(.top, 4)
                
                HStack {
                    Image(systemName: "tag.fill")
                    Text(String(format: "$%.02f",
                                item.price))
                }
                .foregroundColor(.white)
                .font(.system(.title3,
                              design: .monospaced,
                              weight: .regular))
                .padding(12)
                .background {
                    Capsule()
                        .fill(.secondary)
                }
            } // Image + Title + Pricetag
            
            Spacer()
            
            Button("Add to Shopping List") {
                cart.append(item)
            }
            .buttonStyle(.boldButtonStyle)
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var cart = [WollyItem]()
    
    static var previews: some View {
        ForEach(Examples.wollyItems) { wi in
            DetailView(item: .constant(wi), cart: .constant(cart))
                .previewDisplayName(wi.title)
        }
    }
}
