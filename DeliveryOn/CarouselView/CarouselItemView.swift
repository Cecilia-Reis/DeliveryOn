//
//  CarouselItemView.swift
//  DeliveryOn
//
//  Created by Cecilia Reis on 06/06/24.
//

import SwiftUI

struct CarouselItemView: View {
    
    let order: OrderType
    
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    CarouselItemView(order: OrderType( id: 1, name: "", image: "barbecue-banner"))
        .previewLayout(.sizeThatFits)
        .padding()
}
