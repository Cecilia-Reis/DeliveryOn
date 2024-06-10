//
//  StoreType.swift
//  DeliveryOn
//
//  Created by Cecilia Reis on 06/06/24.
//

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let starts: Int
    let products: [ProductType]
}
