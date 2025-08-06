//
//  SwiftUIView.swift
//  Whereisagift
//
//  Created by Artem Poletaev on 28.07.2025.
//

import SwiftUI

struct WishListView: View {
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    @State private var wishes: [Wish] = Bundle.main.decode("wishes.json")

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(wishes) { wish in
                        ProductCardView(wish: wish)
                    }
                }
                .padding()
            }
            .navigationTitle("Список Желаний")
        }
    }
}

struct ProductCardView: View {
    let wish: Wish

    var body: some View {
        VStack {
            AsyncImage(url: wish.img) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } else if phase.error != nil {
                    Image(systemName: "photo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.gray)
                } else {
                    ProgressView()
                }
            }
            .frame(height: 100)

            Text(wish.name)
                .font(.headline)
                .lineLimit(1)
               

            Text("\(wish.price.currency) \(String(format: "%.2f", wish.price.value))")
                .font(.subheadline)
                
            HStack(spacing: 4) {
                Image(systemName: "star.fill")
                Text(String(format: "%.1f", wish.rate))
            }
            .font(.caption)
            .foregroundColor(.yellow)
            
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color("AppPurple"))
        )
    }
}

struct WishListView_Previews: PreviewProvider {
    static var previews: some View {
        WishListView()
    }
}

#Preview {
    WishListView()
}



