//
//  User.swift
//  LittleLemon
//
//  Created by Navya Vohra on 2024-08-26.
//

import Foundation

class User: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
}
