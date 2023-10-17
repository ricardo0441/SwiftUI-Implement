//
//  ImageView.swift
//  SwiftUI-Implement
//
//  Created by Ricardo Rodriguez on 10/16/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            
            Image("imgSwift")
                .resizable()
    //            .scaledToFill()
    //            .scaledToFit()
    //            .padding(50)
                .frame(width: 300, height: 300)
//                .background(.gray)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(color: .gray, radius: 5)
            
            Image(systemName: "person.fill.badge.minus")
                .resizable()
                .padding(50)
                .frame(width: 300, height: 300)
                .background(.gray)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 4))
            .shadow(color: .gray, radius: 5)
            .foregroundColor(.blue)
            
        }
            
            
    }
}

#Preview {
    ImageView()
}
