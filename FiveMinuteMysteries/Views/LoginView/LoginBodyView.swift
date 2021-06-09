//
//  LoginBodyView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/9/21.
//

import SwiftUI

struct LoginBodyView: View {
  @State private var username: String = ""
  @State private var password: String = ""
  @State private var isPresented: Bool = false
  
  var body: some View {
    ZStack {
      Color.white.opacity(0.5)
                      .frame(width: 325, height: 200)
                      .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                      .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 10)
                      .blur(radius: 1)
      VStack {
        TextField("Username", text: $username)
          .padding()
          
          .frame(width: 300)
        TextField("Password", text: $password)
          .padding()

          .frame(width: 300)
        HStack {
          Spacer()
          Button(action: {
            isPresented = true
          }) {
            Text("Signup")
          }
          Spacer()
          Text("|")
          Spacer()
          Button(action: {
            
          }) {
            Text("Login")
          }
          Spacer()
        }
      }
      .sheet(isPresented: $isPresented, content: {
        RegisterView()
      })
    }
  }
}

struct LoginBodyView_Previews: PreviewProvider {
  static var previews: some View {
    LoginBodyView()
  }
}
