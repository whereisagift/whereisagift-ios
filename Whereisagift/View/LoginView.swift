//
//  LoginView.swift
//  Whereisagift
//
//  Created by Artem Poletaev on 05.08.2025.
//

import AuthenticationServices
import SwiftUI

struct LoginView: View {
    @State private var isLoggedIn = false

    var body: some View {
        if isLoggedIn {
            ContentView()
        } else {
            VStack {
                Spacer()

                Text("Время дарить подарки")
                    .font(.system(size: 30))
                    .bold()

                Image(.imageLogin)
                    .resizable()
                    .frame(height: 350)

                SignInWithAppleButton(
                    .signIn,
                    onRequest: { request in

                    },
                    onCompletion: { _ in

                        isLoggedIn = true
                    }
                )
                .signInWithAppleButtonStyle(.black)
                .frame(height: 40)
                .cornerRadius(10)
                .padding(.horizontal)

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
