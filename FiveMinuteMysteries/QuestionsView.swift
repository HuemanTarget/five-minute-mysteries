//
//  QuestionsView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct QuestionsView: View {
  var test: Test
  //  @Binding var nav: Int
  
  var body: some View {
    NavigationView {
      
      VStack(spacing: 30) {
        //          ForEach(test.choice, id: \.self) { test in
        //            Button(action: {
        //
        //            }) {
        //              Text(test)
        //                .padding()
        //                .foregroundColor(.black)
        //            }
        //            .frame(width: 200, height: 50, alignment: .leading)
        //            .background (
        //              RoundedRectangle(cornerRadius: 12)
        //                .stroke(Color.black, lineWidth: 1)
        //            )
        //          }
        
        Button(action: {
          //            nav = item.nav
        }) {
          Text(test.choice[0])
            .padding()
            .frame(width: 200, height: 50, alignment: .leading)
            .foregroundColor(.black)
        }
        .background (
          RoundedRectangle(cornerRadius: 12)
            .stroke(Color.black, lineWidth: 1)
        )
        
        Button(action: {
          //            nav = item.nav
        }) {
          Text(test.choice[1])
            .padding()
            .frame(width: 200, height: 50, alignment: .leading)
            .foregroundColor(.black)
        }
        .background (
          RoundedRectangle(cornerRadius: 12)
            .stroke(Color.black, lineWidth: 1)
        )
        
        Button(action: {
          //            nav = item.nav
        }) {
          Text(test.choice[2])
            .padding()
            .frame(width: 200, height: 50, alignment: .leading)
            .foregroundColor(.black)
        }
        .background (
          RoundedRectangle(cornerRadius: 12)
            .stroke(Color.black, lineWidth: 1)
        )
        
        Button(action: {
          //            nav = item.nav
        }) {
          Text(test.choice[3])
            .padding()
            .frame(width: 200, height: 50, alignment: .leading)
            .foregroundColor(.black)
        }
        .background (
          RoundedRectangle(cornerRadius: 12)
            .stroke(Color.black, lineWidth: 1)
        )
        
        //          Text(test.choice[0])
        //              .padding()
        //              .frame(width: 200, height: 50, alignment: .leading)
        //              .foregroundColor(.black)
        //              .background (
        //                RoundedRectangle(cornerRadius: 12)
        //                  .stroke(Color.black, lineWidth: 1)
        //            )
        
        //          Text("\(item.choice)")
        //            .padding()
        //            .frame(width: 200, height: 50, alignment: .leading)
        //            .foregroundColor(.black)
        //            .background (
        //              RoundedRectangle(cornerRadius: 12)
        //                .stroke(Color.black, lineWidth: 1)
        //            )
        //
        //          Text(test.choice[2])
        //            .padding()
        //            .frame(width: 200, height: 50, alignment: .leading)
        //            .foregroundColor(.black)
        //            .background (
        //              RoundedRectangle(cornerRadius: 12)
        //                .stroke(Color.black, lineWidth: 1)
        //            )
        //
        //          Text(test.choice[3])
        //            .padding()
        //            .frame(width: 200, height: 50, alignment: .leading)
        //            .foregroundColor(.black)
        //            .background (
        //              RoundedRectangle(cornerRadius: 12)
        //                .stroke(Color.black, lineWidth: 1)
        //            )
        
      }
      .navigationBarTitle("")
      .navigationBarHidden(true)
      
    }
    
  }
}


struct QuestionsView_Previews: PreviewProvider {
  static var previews: some View {
    QuestionsView(test: tests[0])
  }
}
