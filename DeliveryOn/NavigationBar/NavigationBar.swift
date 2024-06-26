//
//  NavigationBar.swift
//  DeliveryOn
//
//  Created by Cecilia Reis on 05/06/24.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack{
            Spacer()
            Button("R. Vergueiro, 3185  ") {
                
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            
            Spacer()
            
            Button(action:{}) {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.red)
                
            }
            
        }
    }
}

#Preview {
    NavigationBar()
        .previewLayout(.sizeThatFits)
        .padding()
}
