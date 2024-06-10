//
//  StoresContainerView.swift
//  DeliveryOn
//
//  Created by Cecilia Reis on 06/06/24.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .padding(20)
            
            VStack(alignment: .leading, spacing: 30) {
                ForEach(storesMock) { mock in
                    NavigationLink{
                        StoreDetailView(store: mock)
                    } label: {
                        StoresItemView(store: mock)
                    }
                }
            }
        }
        .padding(25)
        .foregroundColor(.black)
    }
}

#Preview {
    StoresContainerView()
        .previewLayout(.sizeThatFits)
}
