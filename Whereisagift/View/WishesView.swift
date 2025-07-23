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
                Spacer()
                HStack {
                    Spacer()
                    PlusButtonView{
                        print("🍏")
                    }
                    .padding(.trailing, 20)
                    .padding(.bottom, 30)
                    .navigationTitle("Мои желания")
                }
            }
        }
    }
    #Preview {
        WishesView()
    }
