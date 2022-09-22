//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Frank Anderson on 9/18/22.
//

import SwiftUI

struct ContentView: View {
    @State private var cart = [WollyItem]()
    @State private var showCart = false
    @State private var items = Examples.wollyItems
    
    var body: some View {
        NavigationStack {
            List($items) { $item in
                NavigationLink {
                    DetailView(item: $item, cart: $cart)
                } label: {
                    ListRowView(cart: $cart, item: $item)
                }
            }
            .navigationTitle("Wolly's Mobile")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showCart = true
                    } label: {
                        CartButtonView(cart: $cart)
                    }
                }
            }
        }
        .accentColor(.pink)
        .sheet(isPresented: $showCart) {
            CartView(cart: $cart)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
