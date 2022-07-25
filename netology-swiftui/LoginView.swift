//
//  LoginView.swift
//  netology-swiftui
//
//  Created by a.agataev on 20.07.2022.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            Image("logo_icon")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.top, 100)
            VStack {
                Divider()
                TextField("Email or phone", text: $email)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                Divider()
                    .frame(height: 1)
                    .overlay(Color(.lightGray))
                SecureField("Password", text: $password)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .cornerRadius(12)
                Divider()
            }
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1)))
            .padding(.leading, 16)
            .padding(.trailing, 16)
            .padding(.top, 120)
            
            Button(action: {
                print("Tapped!")
            }) {
                Text("Log in")
                    .foregroundColor(.white)
                    .font(.body)
            }
            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 50)
            .background(Color(.systemBlue))
            .cornerRadius(10)
            .padding(.top, 16)
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
