//
//  WishesView.swift
//  Whereisagift
//
//  Created by Artem Poletaev on 23.07.2025.
//

import SwiftUI

struct WishesView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(alignment: .leading) {
                    NavigationLink(destination: WishListView()) {
                        Text("Список желаний")
                            .font(.title2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 16)
                            .tint(Color("AppPurpel"))
                    }
                    Spacer()
                }

                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        PlusButtonView {
                            print("🍏")
                        }
                        .padding(.trailing, 20)
                        .padding(.bottom, 30)
                    }
                }
            }
            .navigationTitle("Мои желания")
        }
    }
}

#Preview {
    WishesView()
}
