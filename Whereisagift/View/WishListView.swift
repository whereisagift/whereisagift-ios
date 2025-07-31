//
//  SwiftUIView.swift
//  Whereisagift
//
//  Created by Artem Poletaev on 28.07.2025.
//

import SwiftUI


struct WishListView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(products) { product in
                        VStack(alignment: .leading, spacing: 8) {
                            Image(product.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 140)
                                .cornerRadius(12)
                            Text(product.title)
                                .font(.headline)
                                .lineLimit(2)
                            Text(product.price, format: .currency(code: "RUB"))
                                .font(.subheadline)
                                .foregroundColor(.blue)

                        }
                        .padding()
                        .background(Color(.systemBackground))
                        .cornerRadius(16)
                        .shadow(radius: 3)
                        .navigationTitle("Список Желаний")
                    }
                }
                .padding()
            }
        }
    }
}
    
#Preview {
    WishListView()
}


