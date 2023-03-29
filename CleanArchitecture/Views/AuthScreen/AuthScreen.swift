//
//  AuthScreen.swift
//  CleanArchitecture
//
//  Created by James on 2023/03/28.
//

import SwiftUI

struct AuthScreen: View {
    @StateObject var authViewModel: AuthViewModel
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("login_screen_background_img")
                .resizable()
                .ignoresSafeArea()
            Rectangle()
                .fill(.black)
                .ignoresSafeArea()
                .opacity(0.75)
            VStack {
                VStack {
                    Image("tracks")
                        .frame(width: 196, height: 32)
                        .padding(.top, 200)
                    Text("Enjoy the playlist")
                        .foregroundColor(.white.opacity(0.6))
                        .font(.system(size: 16))
                        .padding(.vertical, 20)
                    RoundedTextField(placeholder: "Enter your Email", text: $email)
                    RoundedSecureField(placeholder: "Enter your Password", text: $password)
                    Button("Login & Sign Up") {
//                        authViewModel
                    }.padding()
                    Spacer()
                }
                HStack {
                    Text("© 2023 LABEL Foundation")
                        .foregroundColor(.white.opacity(0.6))
                        .font(.system(size: 14))
                }
                .padding(.vertical, 100)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 20)
        }
    }
}

struct RoundedTextField: View {
    let placeholder: String
    @Binding var text: String

    var body: some View {
        TextField(placeholder, text: $text)
            .padding()
            .background(Color.white.opacity(0.7))
            .cornerRadius(8.0)
            .tint(.indigo)
            .textInputAutocapitalization(.none)
            .autocapitalization(.none)
            .keyboardType(.emailAddress)
    }
}

struct RoundedSecureField: View {
    let placeholder: String
    @Binding var text: String

    var body: some View {
        SecureField(placeholder, text: $text)
            .padding()
            .background(Color.white.opacity(0.7))
            .cornerRadius(8.0)
            .tint(.indigo)
            .keyboardType(.default)
    }
}

struct AuthScreen_Previews: PreviewProvider {
    static var previews: some View {
        let mainViewModel = MainViewModel()
        AuthScreen(authViewModel: AuthViewModel(mainViewModel: mainViewModel))
    }
}
