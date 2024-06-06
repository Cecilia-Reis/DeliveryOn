//
//  StoresItemView.swift
//  DeliveryOn
//
//  Created by Cecilia Reis on 06/06/24.
//

import SwiftUI

struct StoresItemView: View {
    
    let order: OrderType
    
    var body: some View {
        HStack {
            Image(order.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading , spacing: 6) {
                Text(order.name)
                    .font(.subheadline)
                Text("20-30min")
                    .font(.system(size: 9))
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }
}

#Preview {
    StoresItemView(order: OrderType(id: 1, name: "Monster burguer", image:"monstro-burger-logo"))
        .previewLayout(.sizeThatFits)
}
