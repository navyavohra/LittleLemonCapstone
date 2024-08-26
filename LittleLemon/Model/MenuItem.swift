//
//  MenuItem.swift
//  LittleLemon
//
//  Created by Navya Vohra on 2024-08-26.
//

import Foundation

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let price: Double
    let imageName: String
}
