//
//  RegisterBodyView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/9/21.
//

import SwiftUI

struct RegisterBodyView: View {
  @State private var username: String = ""
  @State private var password: String = ""
  @State private var confirmPassword: String = ""
  @State private var message = ""
  
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    ZStack {
      Color.white.opacity(0.5)
        .frame(width: 325, height: 300)
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
        TextField("Confirm Password", text: $confirmPassword)
          .padding()
          .frame(width: 300)
        Text("\(message)")
          .foregroundColor(.red)
          .padding()
        
        Button(action: {
          if password != confirmPassword {
            message = "Passwords Do Not Match"
          } else if password == "" || username == "" {
            message = "Please Enter A Username Or Password"
          } else {
            presentationMode.wrappedValue.dismiss()
          }
          
        }) {
          Text("Signup")
        }
      }
    }
  }
}

struct RegisterBodyView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterBodyView()
  }
}
