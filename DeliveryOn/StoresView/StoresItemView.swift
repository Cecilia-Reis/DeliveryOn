//
//  StoresItemView.swift
//  DeliveryOn
//
//  Created by Cecilia Reis on 06/06/24.
//

import SwiftUI

struct StoresItemView: View {
    
    let store: StoreType
    
    var body: some View {
        HStack {
            Image(store.logoImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading , spacing: 6) {
                Text(store.name)
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
    StoresItemView(store: storesMock[0])
        .previewLayout(.sizeThatFits)
}
