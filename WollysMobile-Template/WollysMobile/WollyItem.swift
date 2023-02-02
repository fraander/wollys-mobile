//
//  WollyItem.swift
//  MyFirstApp
//
//  Created by Frank Anderson on 9/21/22.
//

import Foundation

// Represents an item Frank likes to buy at Wollastons
struct WollyItem: Identifiable {
    var id = UUID()
    var title: String
    var imageName: String = "tag.fill"
    var price: Double
}
