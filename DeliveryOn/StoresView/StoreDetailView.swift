//
//  StoreDetailView.swift
//  DeliveryOn
//
//  Created by Cecilia Reis on 06/06/24.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    @Environment(\.presentationMode)  var presentationMode
    @State private var selectedProduct: ProductType?
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(store.headerImage)
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    Text(store.name)
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    Image(store.logoImage)
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                HStack {
                    Text(store.location)
                    
                    ForEach(1...store.starts, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.caption)
                    }
                }
                .padding(.vertical,8)
                .padding(.horizontal)
                
                Text("Produtos")
                    .font(.title2)
                    .bold()
                    .padding()
                
                ForEach(store.products) { product in
                    
                    Button{
                        selectedProduct = product
                    } label: {
                        HStack {
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text(product.name)
                                    .bold()
                                
                                Text(product.description)
                                    .foregroundColor(.black.opacity(0.5))
                                    .multilineTextAlignment(.leading)
                                
                                Text(product.formattedPrice)
                            }
                            Spacer()
                            
                            Image(product.image)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(12)
                                .frame(width: 120, height: 120)
                                .shadow(color: .black.opacity(0.3), radius: 20, x:6, y:8)
                        }
                        .padding()
                        .foregroundColor(.black)
                    }
                    .sheet(item:$selectedProduct) {
                        product in ProductDetailView(product: product)
                    }
                }
            }
            .navigationTitle(store.name)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "cart")
                            
                            Text("Loas")
                        }
                        .foregroundColor(Color("ColorRed"))
                    }

                }
            }
        }
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
