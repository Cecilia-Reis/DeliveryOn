//
//  CarouselTableView.swift
//  DeliveryOn
//
//  Created by Cecilia Reis on 06/06/24.
//

import SwiftUI

struct CarouselTableView: View {
    
    let ordersMock: [OrderType] =  [
        OrderType(id: 1, name: "Banner churrasco", image:"barbecue-banner"),
        OrderType(id: 2, name: "Banner prato feito", image:"brazilian-meal-banner"),
        OrderType(id: 3, name: "Banner poke", image:"pokes-banner"),
    ]
    
    var body: some View {
        TabView {
            ForEach(ordersMock) { mock in
                CarouselItemView(order: mock)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    CarouselTableView()
}
