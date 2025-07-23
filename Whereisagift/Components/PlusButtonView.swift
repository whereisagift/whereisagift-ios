//
//  PlusButtonView.swift
//  Whereisagift
//
//  Created by Artem Poletaev on 23.07.2025.
//

import SwiftUI

struct PlusButtonView: View{
    var action: () -> Void
    var body: some View {
        Button(action: action) {
            Text("+")
                .font(.title)
                .frame(width: 56, height: 56)
                .foregroundColor(.white)
                .background(Color.blue)
                .clipShape(Circle())
                .shadow(radius: 5)
            
        }
    }
}
