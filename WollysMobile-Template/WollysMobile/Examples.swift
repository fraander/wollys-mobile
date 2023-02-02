//
//  Examples.swift
//  MyFirstApp
//
//  Created by Frank Anderson on 9/21/22.
//

import Foundation

// Represents Examples of WollyItems
struct Examples {
    static let muffin = WollyItem(
        title: "French Toast Muffin", price: 2.5)
    static let coffee = WollyItem(
        title: "Iced Coffee", price: 4.49)
    static let bagel = WollyItem(
        title: "Bagel", price: 1.65)
    static let cookie = WollyItem(
        title: "Cookie", price: 1.99)
    static let brownie = WollyItem(
        title: "Brownie", price: 1.8)
    
    static let wollyItems = [muffin, coffee,
                             bagel, cookie, brownie]
}


