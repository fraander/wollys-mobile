//
//  CartView.swift
//  MyFirstApp
//
//  Created by Frank Anderson on 9/21/22.
//

import SwiftUI

struct CartView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var cart: [WollyItem]
    let message = "Add items to your Shopping List to have them show up here."
    
    var body: some View {
        NavigationStack {
            VStack {
                if (cart.isEmpty) {
                    Text(message)
                        .font(.system(.body, design: .rounded))
                        .padding(40)
                        .multilineTextAlignment(.center)
                } else {
                    VStack {
                        List($cart, editActions: [.delete, .move]) {
                            ListRowView(cart: $cart, item: $0, addDisabled: true)
                        }
                        
                        Button("Clear Shopping List") {
                            withAnimation {
                                cart.removeAll()
                            }
                        }
                        .buttonStyle(.boldButtonStyle)
                        .padding(.top, 10)
                    }
                }
            }
            .navigationTitle("Shopping List")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                if (!cart.isEmpty) {
                    ToolbarItem(placement: .navigationBarLeading) {
                        EditButton()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Close") {
                        dismiss()
                    }
                    
                }
            }
            .tint(.pink)
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(cart: .constant(Examples.wollyItems))
        CartView(cart: .constant([WollyItem]()))
        
    }
}
