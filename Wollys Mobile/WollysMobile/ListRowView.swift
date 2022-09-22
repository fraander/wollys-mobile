//
//  ListRowView.swift
//  MyFirstApp
//
//  Created by Frank Anderson on 9/19/22.
//

import SwiftUI

struct ListRowView: View {
    @Binding var cart: [WollyItem]
    @Binding var item: WollyItem
    var addDisabled = false
    
    var body: some View {
        HStack {
            Image(systemName: item.imageName)
                .foregroundColor(.pink)
            
            Text(item.title)
                .font(.system(.title2, design: .rounded))
            
            Spacer()
            
            Button {
                withAnimation() {
                    cart.append(item)                    
                }
            } label: {
                Text(String(format: "$%.02f", item.price))
                    .font(.system(.body, design: .monospaced, weight: .regular))
            }
            .tint(.pink)
            .buttonStyle(.bordered)
            .disabled(addDisabled)
        }
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var cart = [WollyItem]()
    
    static var previews: some View {
        ListRowView(cart: .constant(cart), item: .constant(Examples.wollyItems[0]))
    }
}
